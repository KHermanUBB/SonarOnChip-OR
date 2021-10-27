export DESIGN_NICKNAME = SonarOnChip-OR
export DESIGN_NAME = SonarOnChip
export PLATFORM    = sky130hd

export VERILOG_FILES = ./designs/$(DESIGN_NICKNAME)/rtl/strip/SonarOnChip.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/strip/FILTERS.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/strip/abs.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/strip/multiplier.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/strip/comparator.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/strip/cic.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/strip/defines.v \
                       ./designs/$(DESIGN_NICKNAME)/rtl/strip/SR_latch.v \


export SDC_FILE      = ./designs/$(DESIGN_NICKNAME)/SonarOnChip.sdc


# These values must be multiples of placement site
export DIE_AREA    = 0 0 1000 200
export CORE_AREA   = 5 5 995 195
#export CORE_ASPECT_RATIO   = 0.2
#export CORE_UTILIZATION = 60 
#export PLACE_DENSITY = 0.50
#export GLB_RT_ALLOW_CONGESTION = 1
#export GLB_RT_MAXLAYER =  4

# IR drop estimation supply net name to be analyzed and supply voltage variable
# For multiple nets: PWR_NETS_VOLTAGES  = "VDD1 1.8 VDD2 1.2"
export PWR_NETS_VOLTAGES  = "VDD 1.8"
export GND_NETS_VOLTAGES  = "VSS 0.0"



