/*!
 * File generated by platform wizard. DO NOT MODIFY
 *
 */

metaonly module Platform inherits xdc.platform.IPlatform {

    config ti.platforms.generic.Platform.Instance CPU =
        ti.platforms.generic.Platform.create("CPU", {
            clockRate:      1000,                                       
            catalogName:    "ti.catalog.c6000",
            deviceName:     "TMS320C6678",
            customMemoryMap:
           [          
                ["L2SRAM", 
                     {
                        name: "L2SRAM",
                        base: 0x00800000,                    
                        len: 0x00060000,                    
                        space: "code/data",
                        access: "RWX",
                     }
                ],
                ["MSMCSRAM", 
                     {
                        name: "MSMCSRAM",
                        base: 0x0c000000,                    
                        len: 0x00200000,                    
                        space: "code/data",
                        access: "RWX",
                     }
                ],
                ["MSMCSRAM_NOCACHE", 
                     {
                        name: "MSMCSRAM_NOCACHE",
                        base: 0xa0200000,                    
                        len: 0x00200000,                    
                        space: "code/data",
                        access: "RWX",
                     }
                ],
                ["DDR3", 
                     {
                        name: "DDR3",
                        base: 0x80000000,                    
                        len: 0x10000000,                    
                        space: "code/data",
                        access: "RWX",
                     }
                ],
                ["DDR3_NOCACHE", 
                     {
                        name: "DDR3_NOCACHE",
                        base: 0x90000000,                    
                        len: 0x10000000,                    
                        space: "code/data",
                        access: "RWX",
                     }
                ],
           ],
          l2Mode:"128k",
          l1PMode:"32k",
          l1DMode:"32k",

    });
    
instance :
    
    override config string codeMemory  = "MSMCSRAM";   
    override config string dataMemory  = "MSMCSRAM_NOCACHE";                                
    override config string stackMemory = "L2SRAM";
    
}
