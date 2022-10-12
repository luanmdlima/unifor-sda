onerror {exit -code 1}
vlib work
vlog -work work for_generate.vo
vlog -work work counter_bcd_up.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.counter_bcd_up_vlg_vec_tst -voptargs="+acc"
vcd file -direction for_generate.msim.vcd
vcd add -internal counter_bcd_up_vlg_vec_tst/*
vcd add -internal counter_bcd_up_vlg_vec_tst/i1/*
run -all
quit -f
