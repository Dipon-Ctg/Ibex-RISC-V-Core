set m "ibex_core"

## Define Lib and RTL ##

set_db lib_search_path {/usrf01/prog/tsmc/40/cmos/lp/digital/Front_End/timing_power_noise/NLDM/tcbn40lpbwp12t40m1p_200a}

set_db library {tcbn40lpbwp12t40m1pwc.lib}



#################
## Import file ##
#################

set_attribute init_hdl_search_path /usrf06/home/agids/stu/s_ids108/Master_Proj/ibex/ibex_WT_Scan2/rtl/

read_hdl -sv {ibex_alu.v ibex_register_file_ff.v ibex_branch_predict.v ibex_register_file_fpga.v ibex_compressed_decoder.v ibex_register_file_latch.v ibex_controller.v ibex_wb_stage.v ibex_core.v ibex_counter.v prim_badbit_ram_1p.v ibex_cs_registers.v prim_clock_gating.v ibex_csr.v prim_generic_clock_gating.v ibex_decoder.v prim_generic_ram_1p.v ibex_dummy_instr.v prim_lfsr.v ibex_ex_block.v prim_ram_1p.v ibex_fetch_fifo.v prim_secded_28_22_dec.v ibex_icache.v prim_secded_28_22_enc.v ibex_id_stage.v prim_secded_39_32_dec.v ibex_if_stage.v prim_secded_39_32_enc.v ibex_load_store_unit.v prim_secded_72_64_dec.v ibex_multdiv_fast.v prim_secded_72_64_enc.v ibex_multdiv_slow.v prim_xilinx_clock_gating.v ibex_pmp.v ibex_prefetch_buffer.v}

##################
## Clock gating ##
##################
set_attribute lp_insert_clock_gating true 

###############
## Elaborate ##
###############

elaborate ibex_core
uniquify /designs/ibex_core

##############################
## Define Clock Gating Cell ##
##############################

set_db design:$m .lp_clock_gating_cell CKLNQD12BWP12T40M1P

##############
## Read SDC ##
##############

read_sdc ibex_Design_Constraints.sdc

## Synthesis ##
set_db use_scan_seqs_for_non_dft false
set_db lp_power_analysis_effort medium
set_db leakage_power_effort medium
set_db syn_generic_effort medium
syn_generic $m

set_db syn_map_effort low
syn_map $m

set_db syn_opt_effort medium
syn_opt $m -incremental


## Reports ##
report_timing > reports/time_$m.rpt
report area > reports/area_$m.rpt
report gates > reports/gates_$m.rpt
report clock_gating > reports/clock_gating_$m.rpt
report power > reports/power_$m.rpt

## Write Outputs ##
write_hdl > results/netlist_$m.v
write_sdc > results/post_syn_$m.sdc





