module bound_flasher(clk, rst_n, flick, LED);
	input clk, rst_n, flick;
	output reg [15:0]LED;
	
	parameter STOP = 3'b000, UP6 = 3'b001, DOWN6 = 3'b010, UP11 = 3'b011,
	DOWN11 = 3'b100, UP16 = 3'b101, DOWN16 = 3'b110, DOWNEXTRA = 3'b111;
	
	reg[2:0] state;
	reg[2:0] next_state;
	reg[15:0] next_LED;
	//reg check_flick, check_flick6;
	
	
	
	always@(posedge clk or negedge rst_n) begin
		if(!rst_n) begin
			LED <= 16'd0;
			state <= STOP;
		end
		else begin
			LED <= next_LED;
			state <= next_state;
		end
	end
	
	always@(*) begin
		case(state)
			STOP: begin
				next_LED = 16'd0;
				next_state = STOP;
				
				if(flick) begin
					next_LED = (LED << 1) | 1'b1;
					next_state = UP6;
				end
			end
			
			UP6: begin
				next_LED = (LED << 1) | 1'b1;
				next_state = state;
				if(next_LED == 16'h003f) begin
					next_state = DOWN6;
				end
				
			end
			
			DOWN6: begin
				next_LED = (LED >> 1);
				next_state = state;
				
				if(next_LED == 16'h0000) begin
					next_state = UP11;
				end
				
			end
	
			UP11: begin
				next_LED = (LED << 1) | 1'b1;
				next_state = state;
				
				if(flick && next_LED == 16'd63) begin
					next_state = DOWN6;
				end
				
				if(next_LED == 16'd2047) begin
					if(flick) begin
						next_state = DOWN11;
					end
					else begin
						next_state = DOWNEXTRA;
					end
				end
			end
			
			DOWN11: begin
				next_state = state;
				next_LED = (LED >> 1);
				
				//if(!flick) begin
					//next_state = DOWNEXTRA;
				//end
				if (next_LED == 16'd0000) begin
					next_state = UP11;
				end
			end
			
			DOWNEXTRA: begin
				next_LED = LED >> 1;
				next_state = state;
				
				
				if(next_LED == 16'd31) begin
					//if(flick) begin
						//next_state = DOWNEXTRA;
					//end
					//else begin
						next_state = UP16;
					//end
				end
				//if(next_LED == 16'd0000) begin
					//next_state = UP16;
				//end
			end
			
			UP16: begin
				next_LED = (LED << 1) | 1'b1;
				next_state = state;
				
				if(flick && (next_LED == 16'd63 || next_LED == 16'd2047)) begin
					next_state = DOWNEXTRA;
				end
				
				//if(flick && next_LED == 16'd2047) begin
					//next_state = DOWNEXTRA; //fix in it
				//end
				
				if(next_LED == 16'hffff) begin
					next_state = DOWN16;
				end
				
			end
			
			DOWN16: begin
				next_LED = (LED >> 1);
				next_state = state;
				
				
				if(next_LED == 16'h0000) begin
					next_state = STOP;
				end
				
			end
			
		
		endcase
	end
	
	
endmodule	