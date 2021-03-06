// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// nvdla_top sv side SC-SV Adapter 
// This is autogenerated code

// nvdla_top_sv_module_wrapper
`ifndef nvdla_top_sv_module_wrapper
`define nvdla_top_sv_module_wrapper
import uvm_pkg::*;

`include "nvdla_top_sv_interface.svh"

module nvdla_top_sv_module_wrapper();
    //////////////////////////////////////////////
    //Wires for nvdla_top IO connections
    //////////////////////////////////////////////

     wire  nvdla_intr;  

    //////////////////////////////////////////////
    //nvdla_top sv Interface Instance
    //////////////////////////////////////////////
    nvdla_top_sv_interface nvdla_top_sv_interface_inst(
        .nvdla_intr(nvdla_intr)
	);

    //////////////////////////////////////////////
    //nvdla_top SystemC side wrapper Instance
    // This module would be generated by syscan
    //////////////////////////////////////////////
    nvdla_top_sc_adapter nvdla_top_sc_adapter_inst(
	.nvdla_top_sc2sv_nvdla_intr(nvdla_intr)
	);

    //////////////////////////////////////////////
    //Upload interface handle to the resource db
    //Use the SV interface instance (nvdla_top_sv_interface) to connect to SV side transactors(if any)
    //////////////////////////////////////////////
    initial begin
        uvm_config_db#(virtual nvdla_top_sv_interface)::set(null,"*","nvdla_top_sv_interface",nvdla_top_sv_interface_inst);
    end

endmodule:nvdla_top_sv_module_wrapper 

`endif // nvdla_top_sv_module_wrapper
