module adjusted_output (
    input [3:0] SW,      // 4-bit switch input
    output [3:0] A       // Adjusted output for HEX0 when SW >= 10
);
	// Module that generates an adjusted output for HEX0 when SW >= 10
	// The adjusted output is used when the input is greater than or equal to 10
	//see karnough maps and truth tables for task B
	 assign A[3] = 1'b0;
    assign A[2] = (SW[2] & SW[1]);
    assign A[1] = (~SW[1]);
    assign A[0] = (SW[0]);
endmodule
