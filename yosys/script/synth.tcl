read_verilog full_adder_opt.v

synth -top full_adder_opt

dfflibmap -liberty sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib

write_verilog fa_synth.v      ;
write_json fa.json            ;
stat                           ;

