module bound_flasher_tb();
	reg clk, flick, resetn;
	
	wire [15:0]LED;
	//wire [1:0]state;
	//wire [2:0]index;
	
	parameter CYCLE = 20;
	
	bound_flasher bf(
		.clk(clk),
		.flick(flick),
		.LED(LED),
		//.state(state),
		//.index(index),
		.rst_n(resetn)
	);
	
	initial 
	begin
		clk = 1'b0;
		forever #(CYCLE / 2) clk = ~clk;
	end
	
	always@(posedge clk)
	begin
		$display("t=%d, resetn = %b, flick = %b, LED = %b", 
					 $time,resetn,		  flick,	     LED,	);
	end
	
	initial 
	begin
		#10000 $finish;
	end
	
	initial
	begin	
		
		#(CYCLE * 5)
		$display("--------------------------------------------");
		$display("-------        Active Reset         --------");
		$display("--------------------------------------------");
		
		resetn = 1'b0;
		#(CYCLE * 2) resetn = 1'b1;
		#(CYCLE * 3) flick = 1'b1;
		#(CYCLE) flick = 1'b0;
		
		#(CYCLE * 20) resetn = 1'b0;
		#(CYCLE * 2) flick = 1'b1;
		#(CYCLE * 5) resetn = 1'b1;
		
		$display("--------------------------------------------");
		$display("------       Normal Operation         ------");
		$display("--------------------------------------------");
		
//		#(CYCLE * 5) flick = 1'b1;
		#(CYCLE * 8) flick = 1'b0;
		
		$display("--------------------------------------------");
		$display("-  Test 3.1 in Checklist (First postion 5) -");
		$display("--------------------------------------------");
		
		#(CYCLE * 56) flick = 1'b1;
		#(CYCLE * 8) flick = 1'b0;
		
		$display("--------------------------------------------");
		$display("- Test 3.2 in Checklis (Second position 5) -");
		$display("--------------------------------------------");
		
		#(CYCLE * 9) flick = 1'b1;
		#(CYCLE * 5) flick = 1'b0;
		
		$display("--------------------------------------------");
		$display("- Test 3.3 in Checklist (Third position 5) -");
		$display("--------------------------------------------");
		
		#(CYCLE * 15) flick = 1'b1;
		#(CYCLE * 12) flick = 1'b0;
		
		$display("--------------------------------------------");
		$display("- Test 3.4 in Checklist (First position 10)-");
		$display("--------------------------------------------");
		
		#(CYCLE * 36) flick = 1'b1;
		#(CYCLE * 2) flick = 1'b0;
		
		#(CYCLE * 20) flick = 1'b1;
		#(CYCLE * 5) flick = 1'b0;
		
		$display("--------------------------------------------");
		$display("-Test 3.5 in Checklist (Second position 10)-");
		$display("--------------------------------------------");
		
		#(CYCLE * 29) flick = 1'b1;
		#(CYCLE * 5) flick = 1'b0;
		
		#(CYCLE * 6) flick = 1'b1;
		#(CYCLE * 5) flick = 1'b0;
		
		$display("---------------------------------------------------------------------------------------------------");
		$display("-- Test 3.6 in Checklist (mainly no kickback positions and some kickback positions for addition) --");
		$display("---------------------------------------------------------------------------------------------------");
		
		#(CYCLE * 35) flick = 1'b1;
		#(CYCLE * 14) flick = 1'b0;
		
		#(CYCLE * 3.7) flick = 1'b1;
		#(CYCLE * 4) flick = 1'b0;
		
		#(CYCLE * 2) flick = 1'b1;
		#(CYCLE * 5) flick = 1'b0;
		
		#(CYCLE * 2) flick = 1'b1;
		#(CYCLE * 4) flick = 1'b0;
		
		#(CYCLE * 2) flick = 1'b1;
		#(CYCLE * 16) flick = 1'b0;

		#(CYCLE * 7) flick = 1'b1;
		#(CYCLE * 2) flick = 1'b0;

		#(CYCLE * 6) flick = 1'b1;
		#(CYCLE * 3) flick = 1'b0;

		#(CYCLE * 10) flick = 1'b1;
		#(CYCLE * 19) flick = 1'b0;
		
		//#(CYCLE * 20) flick = 1'b1;
		//#(CYCLE * 30) flick = 1'b0;
		
//		// Normal Flow
//		#20 flick = 1'b1;
//		#30 flick = 1'b0;
//		
//		// Flick at first pos 5
//		#1500 flick = 1'b1;
//		#150 flick = 1'b0;
//		
//		// Flick at second pos 5
//		#180 flick = 1'b1;
//		#150 flick = 1'b0;
//		
//		// Flick at third pos 5
//		#280 flick = 1'b1;
//		#200 flick = 1'b0;
//		
//		// Flick at first pos 10
//		#600 flick = 1'b1;
//		#20 flick = 1'b0;
//		
//		#400 flick = 1'b1;
//		#100 flick = 1'b0;
//		
//		// Flick at second pos 10
//		#600 flick = 1'b1;
//		#200 flick = 1'b0;
//		
//		// Flick at pos 5 and pos 10 when DOWN
//		#600 flick = 1'b1;
//		#30 flick = 1'b0;
//		
//		#500 flick = 1'b1;
//		#80 flick = 1'b0;
//		
//		#300 flick = 1'b1;
//		#200 flick = 1'b0;
		

	end
	
	initial
	begin
		$recordfile ("waves");
		$recordvars ("depth = 0", bound_flasher_tb);
	end
	
endmodule 