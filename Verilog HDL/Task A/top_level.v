module Coursework(
    input [3:0] SW,         // 4-bit input from switches
    output [6:0] HEX0,      // 7-segment display output (HEX0)
    output [3:0] LEDR       // LED output to display binary input
);

    // Display the binary input on the LEDs
    assign LEDR = SW;

    // Instantiate the seven_segment_display module for HEX0
    seven_segment_display display0 (
        .X(SW),
        .HEX(HEX0)
    );

endmodule
