onerror {exit -code 1}
vlib work
vlog -work work counter_up_down.vo
vlog -work work binary_up_down_counter.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.binary_up_down_counter_vlg_vec_tst -voptargs="+acc"
vcd file -direction counter_up_down.msim.vcd
vcd add -internal binary_up_down_counter_vlg_vec_tst/*
vcd add -internal binary_up_down_counter_vlg_vec_tst/i1/*
run -all
quit -f
