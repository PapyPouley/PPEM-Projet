## THIS IS A GENERATED FILE -- DO NOT EDIT
.configuro: .libraries,e66 linker.cmd \
  package/cfg/omp_config_pe66.oe66 \

linker.cmd: package/cfg/omp_config_pe66.xdl
	$(SED) 's"^\"\(package/cfg/omp_config_pe66cfg.cmd\)\"$""\"C:/Users/mplumeje/CCS/workspace_v6_1_3/stereo_c6678/.config/xconfig_omp_config/\1\""' package/cfg/omp_config_pe66.xdl > $@
