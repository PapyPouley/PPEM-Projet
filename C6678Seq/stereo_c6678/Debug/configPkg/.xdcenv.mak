#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = C:/ti/ipc_1_24_03_32/packages;C:/ti/pdk_C6678_1_1_2_6/packages;C:/ti/openmp_dsp_2_01_16_03/packages;C:/ti/bios_6_33_06_50/packages;C:/ti/ccsv6/ccs_base
override XDCROOT = C:/ti/xdctools_3_23_04_60
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = C:/ti/ipc_1_24_03_32/packages;C:/ti/pdk_C6678_1_1_2_6/packages;C:/ti/openmp_dsp_2_01_16_03/packages;C:/ti/bios_6_33_06_50/packages;C:/ti/ccsv6/ccs_base;C:/ti/xdctools_3_23_04_60/packages;..
HOSTOS = Windows
endif
