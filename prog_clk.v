`timescale 1ns/1ps
module prog_clk(input real freq,
	output reg clk1,
	output reg clk2,
	output reg clk3);
	
real period;
real half_period;

initial begin
  clk1 = 0;
  clk2 = 0;
  clk3 = 0;


//Freq to clock period conversion
period = ((1/(freq * (10 ** 6))) * (10 ** 9));
half_period = (period/2);
end

always #(half_period) clk1 = clk1 + 1'b1;

always begin
	#(half_period) clk2 = clk2 + 1'b1;
	#(half_period) clk2 = clk2 - 1'b1;
end

always begin

	if(clk3)
		#(half_period) clk3 = 1'b0;
   	else
		#(half_period) clk3 = 1'b1;


end
endmodule
