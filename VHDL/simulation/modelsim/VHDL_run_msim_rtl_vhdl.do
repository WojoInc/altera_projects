transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/97wes/Altera Projects/VHDL/custom_libraries/multiplexers/MUX2TO1.vhd}
vcom -93 -work work {C:/Users/97wes/Altera Projects/VHDL/custom_libraries/multiplexers/MUX8TO1.vhd}
vcom -93 -work work {C:/Users/97wes/Altera Projects/VHDL/custom_libraries/multiplexers/MUX16TO1.vhd}

