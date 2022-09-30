onerror {exit -code 1}
vlib work
vlog -work work for_loop.vo
vlog -work work adder.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.adder_vlg_vec_tst -voptargs="+acc"
vcd file -direction for_loop.msim.vcd
vcd add -internal adder_vlg_vec_tst/*
vcd add -internal adder_vlg_vec_tst/i1/*
run -all
quit -f
