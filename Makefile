clean:
	\rm -rf simv* csrc* *.log
comp:
	vcs -f prog_clk.f -sverilog -o simv1  -debug_access+all -kdb -full64
run:
	./simv1 +freq=200 -ucli -do sim.do -full64
verdi:
	verdi -ssf sim.fsdb -full64

