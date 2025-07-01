module seven_segment_display (
    input [3:0] SW,    // 4-bit input
    output [6:0] HEX  // 7-segment display output
);
		// Assign each bit of HEX (7-segment display) based on the binary input (SW), 
		//if the input condions are met then these HEX run 
	assign HEX[0] = (~SW[3] & ~SW[2] & ~SW[1] & SW[0]) | (SW[2] & ~SW[1] & ~SW[0]);
	assign HEX[1] = (SW[2] & ~SW[1] & SW[0]) | (SW[2] & SW[1] & ~SW[0]);
	assign HEX[2] = (~SW[2] & SW[1] & ~SW[0]);
	assign HEX[3] = (~SW[3] & ~SW[2] & ~SW[1] & SW[0]) | (~SW[3] & SW[2] & ~SW[1] & ~SW[0]) | (SW[2] & SW[1] & SW[0]);
	assign HEX[4] = (SW[0]) | (SW[2] & ~SW[1]);
	assign HEX[5] = (~SW[3] & ~SW[2] & SW[0]) | (~SW[2] & SW[1]) | (SW[1] & SW[0]);
	assign HEX[6] = (~SW[3] & ~SW[2] & ~SW[1]) | (SW[2] & SW[1] & SW[0]);



endmodule


