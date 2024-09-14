## Ibex RISC-V Core Design

## Table of Contents

- [About the project](#about_the_project)
  - [Built With](#built_with)
  - [Goals](#goals)
- [Getting Started](#getting_started)
  - [Prerequisites](#prerequisites)
  - [Design Import](#design_import)
- [Macroblock/IP Generation](#macroblock/ip_generation)
  - [Synthesis](#synthesis)
  - [Place and Route](#place_and_route)
- [NoC implementation](#noc_implementation)
  - [Synthesis](#synthesis)
  - [Place and Route](#place_and_route)
- [Acknowledgements](#acknowledgements)
- [Reference](#referenc)



## About the project  
Ibex is a production-quality open source 32-bit RISC-V CPU core written in SystemVerilog. The CPU core is heavily parametrizable and well suited for embedded control applications. Ibex is being extensively verified and has seen multiple tape-outs. Ibex supports the Integer (I) or Embedded (E), Integer Multiplication and Division (M), Compressed (C), and B (Bit Manipulation) extensions. For ibex, both FPGA and ASIC synthesis are supported.With the exception of the register file, which can be implemented using latches or flip-flops, the entire design is synchronous and uses positive-edge triggered flip-flops.The registers are implemented by using the flip-flop-based register file by default for ordinary, positive-edge-triggered flip-flops. When available on FPGA targets, the synchronous-write/aasynchronous-read-read-read RAM design elements are utilized in the FPGA register file. Level-sensitive latches are used in the latch-based register file to implement the registers. The latch-based register file is the preferred option for ASIC implementations since it enables significant area reductions as compared to an implementation utilizing standard flip-flops. It is possible to simulate the latch-based register file with commercial tools.To learn more about Ibex, you can click on [Github](https://github.com/lowRISC/ibex). Support configuration ```small``` [Used config](https://github.com/Dipon-Ctg/Ibex-RISC-V-Core/blob/main/Ref/ibex_configs.yaml).


![blockdiagram](https://github.com/user-attachments/assets/b4fc6578-598d-49fb-8277-c1fca3d2ca14)

### Built With
This solution, like others, uses an RTL to GDSII pipeline, and two Cadence tools—Genus and Innovus—are used to accomplish this whole flow. The following is a list of the actions and related equipment that require the mentioned features:
- Synthesis (Genus)
  - Generating gate-level netlist
  - Generating ```.sdc```

- Place and Route (Innovus)
  - Floorplan
    - Specify the floorplan
    - Hard macro placement
    - Power rings
    - Pin assignment
  - Placement
    - Standard cell placement
    - Spare cell placement
  - Clock Tree Synthesis (CTS)
    - Real clock signal
  - Route the design
    - Global Route
    - Detail Route (default)
  - Filler Cell Placement and Optimization
    - Fill the holes
  - Verify and Tape-out
    - DRC
    - GDSII

### Goals
 - Create a macroblock/IP, called ```ibex_register_file_latch_RV32E0_DataWidth32_DummyInstructions0```, which later on implement for area reduction.
 - Synthesis (synthesis) of the RTL code to produce a netlist. Three steps of synthesis are used here: synthesis with Flip-Floop Register File, synthesis with Latch Register File, and synthesis without Latch module.
 - Backend design (Place and Route).
 - PPA analysis focus on Area(A).

## NoC implementation

### Synthesis
The process

**With Register File FF:**

**With Register File Latch:**

**Without Register Fill Latch:**




### Place and Route
The process
 ![ibex_core](https://github.com/Dipon-Ctg/Ibex-RISC-V-Core/blob/main/Ref/ibex_core)
  
## Reference
[Github](https://github.com/lowRISC/ibex?tab=readme-ov-file)
