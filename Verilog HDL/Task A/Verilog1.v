module top_level(
    input [3:0] SW,         // 4-bit input from switches
    output [6:0] HEX0,      // 7-segment display output (HEX0)
    output [3:0] LEDR       // LED output to display binary input
);

    // Display the binary input on the LEDs
    assign LEDR = SW;

    // Instantiate the 'seven_segment_display' module to drive the HEX0 output (7-segment display)
    // This module takes the 4-bit switch input (SW) and converts it to the corresponding 7-segment display encoding
    seven_segment_display display0 (
        .SW(SW),			// Pass the switch input (SW) to the 7-segment display module
        .HEX(HEX0)		// Output the corresponding 7-segment display values to HEX0
    );

endmodule