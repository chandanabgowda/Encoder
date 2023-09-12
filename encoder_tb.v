`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 01:24:41
// Design Name: 
// Module Name: encoder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module encoder_tb();

    reg [3:0] d;
    reg [1:0] y;

    encoder uut (.d(d), .y(y));

    initial begin
        // Test case 1
        d = 4'b0001;
        #10;
        if (y !== 2'b01) $display("Test case 1 failed");

        // Test case 2
        d = 4'b0010;
        #10;
        if (y !== 2'b10) $display("Test case 2 failed");

        // Test case 3
        d = 4'b0100;
        #10;
        if (y !== 2'b10) $display("Test case 3 failed");

        // Test case 4
        d = 4'b1000;
        #10;
        if (y !== 2'b11) $display("Test case 4 failed");

        // Test case 5
        d = 4'b0110;
        #10;
        if (y !== 2'b11) $display("Test case 5 failed");

        $display("Testing finished");
        $finish;
    end
endmodule

