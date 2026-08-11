ROM Design Using Verilog HDL

📌 Project Overview

This project implements an 8 × 8 Read-Only Memory (ROM) using Verilog HDL.

The ROM contains 8 memory locations, with each location storing 8 bits of data. A 3-bit address is used to select one of the eight memory locations.

🎯 Objectives

- Design a ROM using Verilog HDL.
- Understand the basic working principle of Read-Only Memory.
- Implement address-based data selection.
- Verify the ROM using a Verilog testbench.
- Perform waveform simulation using GTKWave.

🛠️ Technologies Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Digital Electronics
- GitHub

📂 Project Structure

rom-verilog/
│
├── README.md
├── rom.v
├── rom_tb.v
└── simulation/
    └── rom_waveform.png

⚙️ ROM Specifications

Parameter| Value
Memory Type| ROM
Number of Locations| 8
Data Width| 8 bits
Address Width| 3 bits
Total Memory| 64 bits

🔢 ROM Contents

Address| Data
000| 10H
001| 20H
010| 30H
011| 40H
100| 50H
101| 60H
110| 70H
111| 80H

💡 Working Principle

The ROM receives a 3-bit address as input.

The address selects one of the eight predefined memory locations. The corresponding 8-bit data is then provided at the output.

For example:

Address = 010
Data    = 30H

Therefore, when address "010" is applied, the ROM outputs "30H".

💻 Design

The ROM is implemented using a Verilog "case" statement. Since the data values are predefined, the memory behaves as a read-only memory.

🧪 Testbench

The testbench performs the following operations:

1. Applies address "000".
2. Reads the corresponding data.
3. Changes the address sequentially.
4. Reads all eight ROM locations.
5. Displays the address and data values.
6. Generates a VCD waveform file for simulation.

▶️ Simulation Using Icarus Verilog

Step 1: Compile

iverilog -o rom_sim rom.v rom_tb.v

Step 2: Run

vvp rom_sim

Step 3: Open waveform

gtkwave rom.vcd

Add the "address" and "data" signals to the waveform viewer.

📊 Expected Output

Address = 000 → Data = 10H
Address = 001 → Data = 20H
Address = 010 → Data = 30H
Address = 011 → Data = 40H
Address = 100 → Data = 50H
Address = 101 → Data = 60H
Address = 110 → Data = 70H
Address = 111 → Data = 80H

🌐 Applications

ROMs are commonly used in:

- Microcontrollers
- Embedded systems
- Lookup tables
- Firmware storage
- Boot memory
- Digital systems
- FPGA-based designs

✅ Conclusion

An 8 × 8 ROM was successfully designed using Verilog HDL. The testbench verified all eight memory locations, and waveform simulation confirmed that the correct data is produced for each address.

👩‍💻 Author

JAINY INDHU

Electronics and Communication Engineering Student