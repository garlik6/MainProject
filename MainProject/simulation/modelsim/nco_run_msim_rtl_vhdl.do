transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/NCO/MainProject/MainProject/cordic.vhdl}
vcom -93 -work work {D:/NCO/MainProject/MainProject/nco.vhd}
vcom -93 -work work {D:/NCO/MainProject/MainProject/mixing.vhd}

vcom -93 -work work {D:/NCO/MainProject/MainProject/simulation/modelsim/mixing_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  mixing_vhd_tst

add wave *
view structure
view signals
run -all
