export DESIGN_NICKNAME = SonarOnChip-OR
export DESIGN_NAME     = top
export PLATFORM        = sky130hd

export VERILOG_FILES_BLACKBOX =	 ./designs/$(DESIGN_NICKNAME)/rtl/top/SonarOnChip.v 

export VERILOG_FILES = ./designs/$(DESIGN_NICKNAME)/rtl/top/defines.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/top/clk_div.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/top/top.v \
                       $(VERILOG_FILES_BLACKBOX)

export ABC_AREA = 1

export SDC_FILE      = ./designs/$(DESIGN_NICKNAME)/TopSoC.sdc


#export MACRO_PLACE_CHANNEL  = 20 20
export DIE_AREA   = 0 0 2920 3520
export CORE_AREA  = 20 20 2900 3500

export TopSoC_DIR = ./designs/$(DESIGN_NICKNAME)/macro

export ADDITIONAL_GDS_FILES  = $(TopSoC_DIR)/gds/SonarOnChip.gds 
                            

export ADDITIONAL_LEFS  = $(TopSoC_DIR)/lef/SonarOnChip.lef 
            
export MACRO_PLACEMENT = $(TopSoC_DIR)/top.macro_placment.cfg

export FP_PDN_RAIL_WIDTH = 0.48
export FP_PDN_RAIL_OFFSET = 0

# IR drop estimation supply net name to be analyzed and supply voltage variable
# For multiple nets: PWR_NETS_VOLTAGES  = "VDD1 1.8 VDD2 1.2"
export PWR_NETS_VOLTAGES  = "VDD 1.8"
export GND_NETS_VOLTAGES  = "VSS 0.0"
