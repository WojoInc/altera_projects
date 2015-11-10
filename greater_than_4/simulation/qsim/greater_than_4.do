onerror {exit -code 1}
vlib work
vlog -work work greater_than_4.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.greater_than_4_vlg_vec_tst -voptargs="+acc"
vcd file -direction greater_than_4.msim.vcd
vcd add -internal greater_than_4_vlg_vec_tst/*
vcd add -internal greater_than_4_vlg_vec_tst/i1/*
run -all
quit -f
