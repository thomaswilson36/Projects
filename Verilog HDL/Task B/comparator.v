module comparator (
    input [3:0] SW,      // 4-bit switch input
    output z             // Comparator output (1 if SW >= 10)
);
	    // The comparator checks if the input SW is greater than or equal to 10 (binary 1010)
		// If SW >= 10, the output z is set to 1, otherwise it is 0
    assign z = (SW[3] & SW[1]) | (SW[3] & SW[2]);

endmodule
