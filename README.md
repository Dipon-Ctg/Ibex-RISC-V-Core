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



## About the project  
Ibex is a production-quality open source 32-bit RISC-V CPU core written in SystemVerilog. The CPU core is heavily parametrizable and well suited for embedded control applications. Ibex is being extensively verified and has seen multiple tape-outs. Ibex supports the Integer (I) or Embedded (E), Integer Multiplication and Division (M), Compressed (C), and B (Bit Manipulation) extensions.

![blockdiagram](https://github.com/user-attachments/assets/b4fc6578-598d-49fb-8277-c1fca3d2ca14)


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
