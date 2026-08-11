`timescale 1ns/1ps

module rom_tb;

reg  [2:0] address;
wire [7:0] data;

// Instantiate ROM
rom uut (
    .address(address),
    .data(data)
);

// Test different addresses
initial begin

    $dumpfile("rom.vcd");
    $dumpvars(0, rom_tb);

    $monitor("Time = %0t | Address = %b | Data = %h",
             $time, address, data);

    address = 3'b000;
    #10;

    address = 3'b001;
    #10;

    address = 3'b010;
    #10;

    address = 3'b011;
    #10;

    address = 3'b100;
    #10;

    address = 3'b101;
    #10;

    address = 3'b110;
    #10;

    address = 3'b111;
    #10;

    $finish;
end

endmodule