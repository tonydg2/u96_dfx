
#create_pblock pblock_led_cnt_top_inst
#resize_pblock pblock_led_cnt_top_inst -add {SLICE_X0Y120:SLICE_X28Y179 BUFG_PS_X0Y48:BUFG_PS_X0Y71 DSP48E2_X0Y48:DSP48E2_X2Y71 RAMB18_X0Y48:RAMB18_X2Y71 RAMB36_X0Y24:RAMB36_X2Y35}
#add_cells_to_pblock pblock_led_cnt_top_inst [get_cells [list led_cnt_top_inst]] -clear_locs
#--------------------------------------------------------------------------------------------------
create_pblock pblock_led_cnt_pr_inst
resize_pblock pblock_led_cnt_pr_inst -add {SLICE_X2Y149:SLICE_X14Y174 DSP48E2_X0Y60:DSP48E2_X0Y69 RAMB18_X0Y60:RAMB18_X1Y69 RAMB36_X0Y30:RAMB36_X1Y34}
add_cells_to_pblock pblock_led_cnt_pr_inst [get_cells [list led_cnt_top_inst/led_cnt_pr_inst]] -clear_locs
#--------------------------------------------------------------------------------------------------
create_pblock pblock_led_cnt2_pr_inst
resize_pblock pblock_led_cnt2_pr_inst -add {SLICE_X15Y155:SLICE_X27Y173 DSP48E2_X1Y62:DSP48E2_X1Y67 RAMB18_X2Y62:RAMB18_X2Y67 RAMB36_X2Y31:RAMB36_X2Y33}
add_cells_to_pblock pblock_led_cnt2_pr_inst [get_cells [list led_cnt_top_inst/led_cnt2_pr_inst]] -clear_locs

# #--------------------------------------------------------------------------------------------------
# create_pblock led_cnt_pr
# resize_pblock led_cnt_pr -add {SLICE_X36Y30:SLICE_X42Y43 DSP48E2_X3Y12:DSP48E2_X3Y15}
# add_cells_to_pblock led_cnt_pr [get_cells [list led_cnt_pr_inst]] -clear_locs
# 
# #--------------------------------------------------------------------------------------------------
# create_pblock led_cnt2_pr
# resize_pblock led_cnt2_pr -add {SLICE_X1Y122:SLICE_X25Y153 DSP48E2_X0Y50:DSP48E2_X1Y59 RAMB18_X0Y50:RAMB18_X2Y59 RAMB36_X0Y25:RAMB36_X2Y29}
# add_cells_to_pblock led_cnt2_pr [get_cells [list led_cnt2_pr_inst]] -clear_locs
# 
# #--------------------------------------------------------------------------------------------------
# create_pblock led_cnt3_pr
# resize_pblock led_cnt3_pr -add {SLICE_X31Y120:SLICE_X48Y157 CFGIO_SITE_X0Y0:CFGIO_SITE_X0Y0 DSP48E2_X3Y48:DSP48E2_X4Y61 RAMB18_X3Y48:RAMB18_X5Y61 RAMB36_X3Y24:RAMB36_X5Y30}
# add_cells_to_pblock led_cnt3_pr [get_cells [list led_cnt3_pr_inst]] -clear_locs
# 
# #--------------------------------------------------------------------------------------------------
# create_pblock axil_reg32_2
# resize_pblock axil_reg32_2 -add {SLICE_X0Y61:SLICE_X27Y89 DSP48E2_X0Y26:DSP48E2_X1Y35 RAMB18_X0Y26:RAMB18_X2Y35 RAMB36_X0Y13:RAMB36_X2Y17}
# add_cells_to_pblock axil_reg32_2 [get_cells [list axil_reg32_2_inst]]
# 
# #--------------------------------------------------------------------------------------------------
