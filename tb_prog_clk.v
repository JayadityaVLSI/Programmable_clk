`timescale 1ns/1ps
module test;

wire clk1;
wire clk2;
wire clk3;

real freq;

prog_clk p1(.freq(freq),.clk1(clk1),.clk2(clk2),.clk3(clk3));

initial begin
	$value$plusargs("freq=%0f",freq);
	#1000 $finish;
end
endmodule
