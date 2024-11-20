################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
aggregateCost.obj: ../aggregateCost.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="aggregateCost.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

census.obj: ../census.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="census.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

computeWeights.obj: ../computeWeights.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="computeWeights.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

costConstruction.obj: ../costConstruction.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="costConstruction.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

disparitySelect.obj: ../disparitySelect.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="disparitySelect.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="main.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

medianFilter.obj: ../medianFilter.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="medianFilter.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

offsetGen.obj: ../offsetGen.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="offsetGen.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: ../omp_config.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_23_04_60/xs" --xdcpath="C:/ti/ipc_1_24_03_32/packages;C:/ti/pdk_C6678_1_1_2_6/packages;C:/ti/openmp_dsp_2_01_16_03/packages;C:/ti/bios_6_33_06_50/packages;C:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.elf.C66 -p ti.runtime.openmp.platforms.evm6678 -r release -c "C:/ti/ti-cgt-c6000_8.1.0" "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/compiler.opt: | configPkg/linker.cmd
configPkg/: | configPkg/linker.cmd

rgb2Gray.obj: ../rgb2Gray.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="rgb2Gray.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

yuv2RGB.obj: ../yuv2RGB.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="yuv2RGB.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

yuvRead.obj: ../yuvRead.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ti-cgt-c6000_8.1.0/bin/cl6x" -mv6600 --include_path="C:/ti/ti-cgt-c6000_8.1.0/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --openmp --preproc_with_compile --preproc_dependency="yuvRead.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


