// =============================================================================
// Filename: fir_16tap_tb.v
// -----------------------------------------------------------------------------
// This file exports the testbench for fir_16tap.
// =============================================================================
`timescale 1 ns / 1 ps

module fir_16tap_tb();

// ----------------------------------
// Interface of the module
// ----------------------------------
reg [15:0] x;
reg clk,reset;
wire [33:0] y;

// ----------------------------------
// Instantiate the module
// ----------------------------------
fir_16tap uut(
	.x(x),
	.clk(clk),
	.reset(reset),
	.y(y)
); 

// ----------------------------------
// For gate-level simulation, we
// should backannotate the SDF file
// ----------------------------------
initial begin
  $sdf_annotate("fir_16tap.mapped.sdf", uut);
end


// ----------------------------------
// Input stimulus
// ----------------------------------
initial begin 

clk=1'b0;
  forever #100 clk = ~clk;  
  
end


initial begin 
reset = 1;

x<=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=2;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=3;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=4;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=5;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=6;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=7;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=8;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=9;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=10;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=11;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=12;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=13;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=14;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=15;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

x=16;
reset=1;
#3000
$display("For x= %d", x);
$display("y = %0d", y);
reset = 0;
#10
reset = 1;

end



endmodule