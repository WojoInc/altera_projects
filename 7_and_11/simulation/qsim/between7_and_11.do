onerror {exit -code 1}
vlib work
vlog -work work between7_and_11.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.between7_and_11_vlg_vec_tst -voptargs="+acc"
vcd file -direction between7_and_11.msim.vcd
vcd add -internal between7_and_11_vlg_vec_tst/*
vcd add -internal between7_and_11_vlg_vec_tst/i1/*
run -all
quit -f
