onerror {exit -code 1}
vlib work
vlog -work work vending_machine.vo
vlog -work work operational.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.operational_vlg_vec_tst -voptargs="+acc"
vcd file -direction vending_machine.msim.vcd
vcd add -internal operational_vlg_vec_tst/*
vcd add -internal operational_vlg_vec_tst/i1/*
run -all
quit -f
