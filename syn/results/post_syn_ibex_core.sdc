# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Fri Aug 09 18:47:01 CEST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design ibex_core

create_clock -name "clk_i" -period 2.0 -waveform {0.0 1.0} [get_ports clk_i]
set_clock_transition 0.04 [get_clocks clk_i]
set_false_path -from [get_ports rst_ni]
group_path -weight 1.000000 -name cg_enable_group_clk_i -through [list \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/enable]  \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/enable]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/enable]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/enable]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/enable]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/enable]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/enable]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/enable]  \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/enable]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/enable]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/enable]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/enable]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/RC_CGIC_INST/E]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/enable]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/enable]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/enable]  \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/enable]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/enable]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/enable]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/enable]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/RC_CGIC_INST/E]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/enable]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/enable]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/enable]  \
  [get_pins cs_registers_i/RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/enable]  \
  [get_pins cs_registers_i/u_dscratch0_csr_RC_CG_HIER_INST11/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/enable]  \
  [get_pins cs_registers_i/u_dscratch1_csr_RC_CG_HIER_INST12/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/enable]  \
  [get_pins cs_registers_i/u_mepc_csr_RC_CG_HIER_INST13/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/enable]  \
  [get_pins cs_registers_i/u_mscratch_csr_RC_CG_HIER_INST14/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/enable]  \
  [get_pins cs_registers_i/u_mtval_csr_RC_CG_HIER_INST16/RC_CGIC_INST/E]  \
  [get_pins cs_registers_i/RC_CG_DECLONE_HIER_INST/enable]  \
  [get_pins cs_registers_i/RC_CG_DECLONE_HIER_INST/RC_CGIC_INST/E]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/enable]  \
  [get_pins ex_block_i/RC_CG_HIER_INST17/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST18/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST19/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST20/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST21/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST22/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST23/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST24/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST25/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST26/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST27/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST28/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST29/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST30/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST31/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST32/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST33/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST34/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST35/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST36/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST37/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST38/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST39/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST40/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST41/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST42/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST43/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST44/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST45/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST46/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST47/RC_CGIC_INST/E]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/enable]  \
  [get_pins gen_regfile_ff.register_file_i/RC_CG_HIER_INST48/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST49/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/enable]  \
  [get_pins id_stage_i/RC_CG_HIER_INST50/RC_CGIC_INST/E]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/enable]  \
  [get_pins id_stage_i/controller_i_RC_CG_HIER_INST51/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST52/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST53/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST54/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST55/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST56/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST57/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST58/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST59/RC_CGIC_INST/E]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/enable]  \
  [get_pins if_stage_i/RC_CG_HIER_INST60/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST61/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST62/RC_CGIC_INST/E]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/enable]  \
  [get_pins load_store_unit_i/RC_CG_HIER_INST63/RC_CGIC_INST/E] ]
set_clock_gating_check -setup 0.0 
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports instr_req_o]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[31]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[30]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[29]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[28]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[27]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[26]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[25]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[24]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[23]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[22]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[21]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[20]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[19]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[18]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[17]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[16]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[15]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[14]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[13]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[12]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[11]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[10]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[9]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[8]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[7]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[6]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[5]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[4]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[3]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[2]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[1]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {instr_addr_o[0]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports data_req_o]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports data_we_o]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_be_o[3]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_be_o[2]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_be_o[1]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_be_o[0]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[31]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[30]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[29]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[28]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[27]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[26]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[25]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[24]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[23]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[22]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[21]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[20]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[19]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[18]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[17]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[16]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[15]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[14]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[13]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[12]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[11]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[10]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[9]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[8]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[7]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[6]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[5]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[4]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[3]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[2]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[1]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_addr_o[0]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[31]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[30]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[29]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[28]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[27]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[26]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[25]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[24]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[23]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[22]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[21]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[20]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[19]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[18]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[17]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[16]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[15]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[14]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[13]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[12]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[11]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[10]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[9]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[8]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[7]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[6]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[5]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[4]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[3]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[2]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[1]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports {data_wdata_o[0]}]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports alert_minor_o]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports alert_major_o]
set_output_delay -clock [get_clocks clk_i] -add_delay -max 0.05 [get_ports core_sleep_o]
set_max_transition 0.3 [current_design]
set_wire_load_mode "segmented"
set_dont_touch [get_nets clk_i]
set_dont_touch [get_nets rst_ni]
set_clock_uncertainty -setup 0.025 [get_clocks clk_i]
set_clock_uncertainty -hold 0.025 [get_clocks clk_i]
set_clock_latency -source -max 0.4 [get_clocks clk_i]
