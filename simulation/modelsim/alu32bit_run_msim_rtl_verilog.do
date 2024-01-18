transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/alu_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/mod_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/mod_cu.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/mod_dp.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/cla_adder4bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/less_than32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/sub_add_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/cla_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/nor_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/xor_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/or_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/and_32bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/mux_8x1_bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/mux_8x1_4bit.v}
vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/mux_8x1_32bit.v}

vlog -vlog01compat -work work +incdir+/home/ahmete/hw1 {/home/ahmete/hw1/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
