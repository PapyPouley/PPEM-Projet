/*
 * Do not modify this file; it is automatically generated from the template
 * linkcmd.xdt in the ti.targets.elf package and will be overwritten.
 */

/*
 * put '"'s around paths because, without this, the linker
 * considers '-' as minus operator, not a file name character.
 */


-l"C:\Users\mplumeje\CCS\workspace_v6_1_3\stereo_c6678\Debug\configPkg\package\cfg\omp_config_pe66.oe66"
-l"C:\ti\openmp_dsp_2_01_16_03\packages\ti\runtime\ompbios\lib\ti_runtime_ompbios_release_e66.ae66"
-l"C:\ti\ipc_1_24_03_32\packages\ti\sdo\ipc\lib\instrumented_e66\ipc\ipc.lib"
-l"C:\ti\bios_6_33_06_50\packages\ti\sysbios\lib\instrumented_e66\sysbios\sysbios.lib"
-l"C:\ti\openmp_dsp_2_01_16_03\packages\ti\runtime\openmp\lib\ti_runtime_openmp_c6678_release_e66.ae66"
-l"C:\ti\pdk_C6678_1_1_2_6\packages\ti\csl\lib\ti.csl.ae66"
-l"C:\ti\openmp_dsp_2_01_16_03\packages\ti\runtime\argsmain\lib\ti_runtime_argsmain_release_e66.ae66"
-l"C:\ti\openmp_dsp_2_01_16_03\packages\ti\runtime\device\lib\ti_runtime_device_c6678_release_e66.ae66"
-l"C:\ti\pdk_C6678_1_1_2_6\packages\ti\drv\qmss\lib\ti.drv.qmss.ae66"
-l"C:\ti\xdctools_3_23_04_60\packages\ti\targets\rts6000\lib\ti.targets.rts6000.ae66"
-l"C:\ti\xdctools_3_23_04_60\packages\ti\targets\rts6000\lib\boot.ae66"

--retain="*(xdc.meta)"


--args 0x0
-heap  0x0
-stack 0x20000

MEMORY
{
    L2SRAM (RW) : org = 0x800000, len = 0x60000
    OMP_MSMC_NC_VIRT (RW) : org = 0xa0000000, len = 0x20000
    OMP_MSMC_NC_PHY (RW) : org = 0xc000000, len = 0x20000
    MSMCSRAM (RWX) : org = 0xc020000, len = 0x3e0000
    DDR3 (RWX) : org = 0x80000000, len = 0x20000000
}

/*
 * Linker command file contributions from all loaded packages:
 */

/* Content from xdc.services.global (null): */

/* Content from xdc (null): */

/* Content from xdc.corevers (null): */

/* Content from xdc.shelf (null): */

/* Content from xdc.services.spec (null): */

/* Content from xdc.services.intern.xsr (null): */

/* Content from xdc.services.intern.gen (null): */

/* Content from xdc.services.intern.cmd (null): */

/* Content from xdc.bld (null): */

/* Content from ti.targets (null): */

/* Content from ti.targets.elf (null): */

/* Content from xdc.rov (null): */

/* Content from xdc.runtime (null): */

/* Content from ti.targets.rts6000 (null): */

/* Content from ti.drv.qmss (null): */

/* Content from ti.runtime.rts6000 (null): */

/* Content from ti.runtime.device (null): */

/* Content from ti.runtime.argsmain (null): */

/* Content from ti.csl (null): */

/* Content from ti.runtime.openmp (ti/runtime/openmp/linkcmd.xdt): */




SECTIONS
{
    /* 
     *  The .far & .fardata sections of the RTSC genenerated 'C' file (appname)
     *  and the RTS libraries (*rts*.lib) consist of global variables that must
     *  be local to each core.  These sections are therefore placed in
     *  memory local to each core.
     */
    .localfar :
    {
        "*rts*.lib" (.far)
        "*rts*.lib" (.fardata)
        "ti.drv.qmss.ae66" (.far:local) 
        "omp_config_pe66.oe66" (.far)
        "omp_config_pe66.oe66" (.fardata)
    } > L2SRAM

    /*
     * Place the .TI.tls section to avoid a linker defect related to
     * default placement. This section is not used because the runtime
     * dynamically allocates TLS.
     */
    .TI.tls         >   DDR3

    /* tls_init must be placed in a region that has not been mapped via MPAX
     * since it is initialized by the loader
     */
    .TI.tls_init    >   DDR3
}

SECTIONS
{
    .tomp_gvMem:       load= L2SRAM, fill = 0x0
    .qmss:             load= OMP_MSMC_NC_PHY, run= OMP_MSMC_NC_VIRT, fill = 0x0
    .tomp_svNcMem:     load= OMP_MSMC_NC_PHY, run= OMP_MSMC_NC_VIRT, fill = 0x0
    .tomp_svMemSlow:   load= DDR3
}

/* Content from ti.sysbios.interfaces (null): */

/* Content from ti.sysbios.family (null): */

/* Content from xdc.runtime.knl (null): */

/* Content from ti.sdo.ipc.interfaces (null): */

/* Content from ti.sdo.ipc.family (null): */

/* Content from ti.sysbios (null): */

/* Content from ti.sysbios.hal (null): */

/* Content from ti.sysbios.knl (null): */

/* Content from ti.sysbios.gates (null): */

/* Content from ti.sdo.utils (null): */

/* Content from ti.sysbios.syncs (null): */

/* Content from ti.sysbios.heaps (null): */

/* Content from xdc.services.getset (null): */

/* Content from ti.sysbios.family.c66 (null): */

/* Content from ti.sysbios.family.c64p (null): */

/* Content from ti.sysbios.xdcruntime (null): */

/* Content from ti.sysbios.family.c62 (null): */

/* Content from ti.sysbios.timers.timer64 (null): */

/* Content from ti.sysbios.family.c64p.tci6488 (null): */

/* Content from ti.sysbios.utils (null): */

/* Content from ti.catalog.c6000 (null): */

/* Content from ti.catalog (null): */

/* Content from ti.catalog.peripherals.hdvicp2 (null): */

/* Content from xdc.platform (null): */

/* Content from xdc.cfg (null): */

/* Content from ti.platforms.generic (null): */

/* Content from ti.runtime.openmp.platforms.evm6678 (null): */

/* Content from ti.sdo.ipc (ti/sdo/ipc/linkcmd.xdt): */

SECTIONS
{
    ti.sdo.ipc.SharedRegion_0:  { . += 0x8000000;} run > 0x80000000, type = NOLOAD
}


/* Content from ti.sdo.ipc.heaps (null): */

/* Content from ti.sdo.ipc.family.c647x (null): */

/* Content from ti.sdo.ipc.notifyDrivers (null): */

/* Content from ti.sdo.ipc.transports (null): */

/* Content from ti.sdo.ipc.nsremote (null): */

/* Content from ti.sdo.ipc.gates (null): */

/* Content from ti.runtime.ompbios (null): */

/* Content from configPkg (null): */


/*
 * symbolic aliases for static instance objects
 */
xdc_runtime_Startup__EXECFXN__C = 1;
xdc_runtime_Startup__RESETFXN__C = 1;
TSK_idle = ti_sysbios_knl_Task_Object__table__V + 0;

SECTIONS
{
    .text: load >> MSMCSRAM
    .ti.decompress: load > MSMCSRAM
    .stack: load > L2SRAM
    GROUP: load > DDR3
    {
        .bss:
        .neardata:
        .rodata:
    }
    .cinit: load > DDR3
    .pinit: load >> DDR3
    .init_array: load > DDR3
    .const: load >> DDR3
    .data: load >> DDR3
    .fardata: load >> DDR3
    .switch: load >> MSMCSRAM
    .sysmem: load > DDR3
    .far: load >> DDR3
    .args: load > L2SRAM align = 0x4, fill = 0 {_argsize = 0x0; }
    .cio: load >> L2SRAM
    .ti.handler_table: load > DDR3
    .myInputVideoMem: load >> DDR3, type = NOINIT
    .myInputVideoMem2: load >> DDR3, type = NOINIT
    .vecs: load >> MSMCSRAM
    xdc.meta: load >> DDR3, type = COPY

}
