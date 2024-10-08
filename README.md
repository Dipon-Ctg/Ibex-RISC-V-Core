## Ibex RISC-V Core Design

## Table of Contents

- [About the project](#about_the_project)
  - [Built With](#built_with)
  - [Goals](#goals)
- [Getting Started](#getting_started)
  - [Pre-requisites](#pre-requisites)
  - [Design Import](#design_import)
- [Macroblock/IP Generation](#macroblock/ip_generation)
  - [Synthesis](#synthesis)
  - [Place and Route](#place_and_route)
- [NoC implementation](#noc_implementation)
  - [Synthesis](#synthesis)
  - [Place and Route](#place_and_route)
- [Result and Discussions](#result_and_discussions)
- [Acknowledgements](#acknowledgements)
- [Reference](#reference)



## About the project  
Ibex is a production-quality open-source 32-bit RISC-V CPU core written in SystemVerilog. The CPU core is heavily parametrizable and well-suited for embedded control applications. Ibex is being extensively verified and has seen multiple tape-outs. Ibex supports the Integer (I) or Embedded (E), Integer Multiplication and Division (M), Compressed (C), and B (Bit Manipulation) extensions. For ibex, both FPGA and ASIC synthesis are supported. Except for the register file, which can be implemented using latches or flip-flops, the entire design is synchronous and uses positive-edge triggered flip-flops. The registers are implemented by using the flip-flop-based register file by default for ordinary, positive-edge-triggered flip-flops. When available on FPGA targets, the synchronous-write/aasynchronous-read-read-read RAM design elements are utilized in the FPGA register file. Level-sensitive latches are used in the latch-based register file to implement the registers. The latch-based register file is the preferred option for ASIC implementations since it enables significant area reductions as compared to an implementation utilizing standard flip-flops. It is possible to simulate the latch-based register file with commercial tools. To learn more about Ibex, you can click on [Github](https://github.com/lowRISC/ibex). While it supports multiple configurations, I only applied a ```small``` one. [Used config](https://github.com/Dipon-Ctg/Ibex-RISC-V-Core/blob/main/Ref/ibex_configs.yaml)


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
 - Synthesis (syn) of the RTL code to produce a netlist. Four stages of synthesis happen here: Syn with Flip-Floop Register File, Syn with Latch Register File, Syn without Latch module and Syn Latch IP.
 - Backend design (Place and Route).
 - PPA analysis focuses on Area(A).

## Getting Started

### Pre-requisites

**RTL:** I employed Verilog code to remove constraints on IP generation time and minimize complexity through the ibex Core, which was written in SystemVerilog. With the vendor's provided method, one can directly transform the code [sv2v](https://github.com/zachjs/sv2v). I was unable to run the sv2v utility due to an unsuitable system configuration, therefore I had to resort to the RTL code that I obtained from Openroad, another open-source tool [OpenROAD-flow-scripts](https://github.com/The-OpenROAD-Project/OpenROAD-flow-scripts/tree/master/flow/designs/src/ibex).

**Technology and Libraries (.lef, .lib):** The ```.lef``` file (Library Exchange Format) contains information on available metal layers, Via information, design rules, and the geometry of each cell. Timing library ```.lib``` is also known as liberty file. A typical timing library will have information on standard cells like timing, area, and power. These ```.lef``` and ```.lib``` files are generated by the vendors or foundries. For this project, I used TSMC technology. 

### Design Import
 To move from logical to physical design we need to:
 - Define the design (.v)
 - Define design constraints (.sdc)
 - Define operating conditions (MMMC)
 - Define technology and libraries (.lef,.lib)

  ![chart](https://github.com/Dipon-Ctg/Ibex-RISC-V-Core/blob/main/Ref/chart2.png)
  
I pick to read my design's gate-level Verilog file (Netlist) and then enter the name of the top cell or level. Furthermore. The LEF (Library Exchange Format) file, IP/Macros, and Standard cell library need to be established.  I created the timing libraries and restrictions in the Analysis Configuration section by importing an MMMC (Multi-Mode Multi-Corner) view file for various operating scenarios.

## Macroblock/IP Generation
### Synthesis
I synthesized the latch register file as an IP in this section. I use NoC to implement it later. To synthesize, I first studied the RTL codes and extracted every module and package file required for the latch register file. Next, I elaborate on the top-level design. Before developing the design, I activated clock gating to save power consumption by shutting off the registers while they were inactive. I also took care of the clock timing during the synthesis process (transition, slew, false path, etc.). At the moment of synthesis, I also disabled the scan chain option. I extracted the ```netlist``` and ```.sdc```files following the synthesis procedure.

### Place and Route
This stage involves creating a layout for the circuit components' linked forms. A floorplan is initially created to ascertain the position, form, and dimensions of the modules within a chip. Analyzing the chip area, latency, congestion, etc. helps determine where to put the components and prevent problems that might limit speed and performance. PnR, the central component of the ASIC design flow, is made up of many phases. The following steps are:
- Floorplanning: I utilized an aspect ratio of 1 and 80% for the core utilization, with a core to io bordering distance of 5μm and a minimum 4.2μm restriction on my Technology ```.lef``` file. I left the pin assignment by the tool itself and allocated the power rings around the border.
- Placement: I utilized the standard cell and never used a spare. However, spare cells such as BUF, INV, MUX, CLKBUF, etc. might be used at this point for future usage if desired. I carry out the placement optimization procedure after the configuration is finished.
- Clock Tree Synthesis: Timing, power, area, etc. are significantly impacted by clock nets. As a result, unlike any other net, I did not route the clock net to all sequent elements.
Even though ```.lef``` files contain the default routing guidelines, I chose to employ Non-Default-Rules since they improved signal integrity and reduced noise and crosstalk. I doubled the width and spacing on all clock nets using metal 2, keeping in mind the spacing increase on the chip's region.
- Routing: I route the nets after clock tree synthesis and placement. I applied both Global and Detail routing throughout the routing stage. As general knowledge, during the global routing phase, the whole routing region is split up into rectangular tiles to create a routing plan tailored to a particular network. The detailed router determines the actual routing for each pre-assigned global tile, where the real wires and vias are formed. Furthermore, I optimized the routing and added filler cells to fill the holes in the rows. 
- Verification: Even though I had previously verified whether there were any DRC violations at practically every stage, I double-checked throughout the routing. It is also possible to address the routing violation by deleting the routing of the nets with violations and re-routing them.
- Extract:  I take a report out at each step and finally extract the ```.lib``` and ```.lef```files of latch IP in future implementation.


## NoC implementation

### Synthesis
It is the same synthesis procedure as previously, but I ran it three times (With register file Flip-flop, With register file Latch, and Without register File) to get the best results and a report for comparison.

### Place and Route
The next phase for the place and route is the same as previously done for IP generation, with some settings changed to meet the needs. To apply the whole core design, I changed the core utilization by 70%, adding a core to IO bordering a distance of 15μm at the time of floorplan and leaving the remaining configuration unchanged. Additionally, I called the technology ```.lef``` file and the technology ```.lib``` file in MMMC view at the same time that I implemented the IP (latch) in NoC.
- Tape out: I take a report out at each step so I can compare. I extract my design's GDSII/Stream file in this last step.

## Result and Discussions

The process
 ![ibex_core](https://github.com/Dipon-Ctg/Ibex-RISC-V-Core/blob/main/Ref/ibex_core)
  
## Reference
[Github](https://github.com/lowRISC/ibex?tab=readme-ov-file)
