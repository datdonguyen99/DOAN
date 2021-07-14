module bound_flasher(clk, rst_n, flick, LED);
	input clk, flick, rst_n;
	output reg [15:0]LED;
	
	parameter 	INIT  = 2'b00, UP = 2'b10, DOWN  = 2'b11;
	parameter MAX_STATE = 3'd5;

	reg [1:0]state;
	reg [1:0]next_State;
	reg [2:0]index;
	reg [2:0]next_Index;
	reg [15:0]next_LED;
	
	wire [15:0]array_LED[5:0];
	
	assign 	array_LED[0] = 16'h003f; //LED[0] -> LED[5]
	assign	array_LED[1] = 16'h0000; //LED[5] -> LED[0]
	assign	array_LED[2] = 16'h07ff; //LED[0] -> LED[10]
	assign	array_LED[3] = 16'h001f; //LED[10] -> LED[5]
	assign	array_LED[4] = 16'hffff; //LED[5] -> LED[15]
	assign	array_LED[5] = 16'h0000; //LED[15] -> LED[0]
			
	//BEHAVIORAL BLOCK (STATE FLIPFLOP)
	always@(posedge clk or negedge rst_n)
	begin
		if(!rst_n) begin
			state <= INIT;
			LED <= 16'd0;
			index <= 3'd0;
		end
		
		else begin
			state <= next_State;
			LED <= next_LED;
			index <= next_Index;
		end
	end
	
	//COMBINATIONAL BLOCK(LED-ARRAY)
	always@(*)
	begin
		case(state)
			// INIT
			INIT: begin
				next_State = state;
				next_LED = 16'd0;
				next_Index = 3'd0;
			
				if(flick) begin
					next_State = UP;
					next_LED = (LED << 1) | 1'b1;
				end
			end
			
			// UP
			UP: begin
				if(flick && (LED == 16'h003f || LED == 16'h07ff) && index != 0) begin
					next_State = DOWN;
					next_LED = (LED >> 1);
					next_Index = index - 1;
				end
				
				else if(LED < array_LED[index]) begin
					next_State = state;
					next_LED = (LED << 1) | 1'b1;
					next_Index = index;
				end
				
				else begin
					if(index < MAX_STATE) begin
						next_State = DOWN;
						next_LED = (LED >> 1);
						next_Index = index + 1;
					end
				end
			end
				
			// DOWN
			DOWN: begin
				if(LED > array_LED[index]) begin
					next_State = state;
					next_LED = (LED >> 1);
					next_Index = index;
				end
				
				else begin
					if(index < MAX_STATE) begin
						next_State = UP;
						next_LED = (LED << 1) | 1'b1;
						next_Index = index + 1;
					end
					
					else begin
						next_State = INIT;
						next_LED = 16'd0;
						next_Index = 3'd0;
					end
				end
			end
					
		endcase
	end
	
endmodule
	