module task_b (
    input [3:0] SW,      // 4-bit input from switches
    output [6:0] HEX0,   // Seven-segment display for lower digit
    output [6:0] HEX1,   // Seven-segment display for higher digit
    output [3:0] LEDR    // LED output to show switch state
);

    wire z;              // Comparator output
    wire [3:0] A;        // Adjusted output for HEX0 when input is greter than 9

    // Assign LEDs to reflect switch inputs
    assign LEDR = SW;

    // Comparator logic: z = 1 when input > 9 (1010 - 1111)
    comparator u_comparator (
        .SW(SW),	// Input switch value
        .z(z)	// Comparator output: z is 1 if SW >= 10, 0 otherwise
    );
   
    // Circuit A: Computes the adjusted value for HEX0 when input is greater than or equal to 10
    adjusted_output u_adjusted_output (
        .SW(SW),
        .A(A)
    );
   
    // Multiplexer logic to select HEX0 display value
    wire [3:0] HEX0_in;
    assign HEX0_in = z ? A : SW;
   
    // Seven-segment display encoding for HEX0
    seven_segment u_hex0 (
        .SW(HEX0_in),
        .HEX(HEX0)
    );

    // Seven-segment display encoding for HEX1
    seven_segment u_hex1 (
        .SW(z ? 4'b0001 : 4'b0000), // Display 0 or 1 based on comparator output
        .HEX(HEX1)
    );

endmodule
