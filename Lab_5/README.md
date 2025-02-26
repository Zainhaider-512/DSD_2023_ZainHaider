# Seven-Segment Display Driver (Experiment 5)

## Overview
This project implements a seven-segment display driver using combinational logic and K-Map minimization. The system takes a 4-bit input (`num`) representing hexadecimal digits (0-F) and a 3-bit selection (`sel`) to choose which of the eight seven-segment displays will be active.

## Features
- Displays hexadecimal characters (0-F) on a seven-segment display.
- Uses common anode configuration with active-low control.
- Implements logic derived from K-Maps for segment control.
- Structural and behavioral Verilog implementations provided.
- Simulated using QuestaSim and synthesized on the Nexys A7 FPGA.

## Files
- `lab5_structural.sv` - Structural implementation using minimized logic equations.
- `lab5_behavioral.sv` - Behavioral implementation of the seven-segment decoder.
- `lab5_tb.sv` - Testbench for simulation in QuestaSim.
- `lab5.xdc` - FPGA constraints file for Nexys A7 board.

## Simulation & Synthesis
1. Simulate using QuestaSim (`lab5_tb.sv`).
2. Synthesize in Xilinx Vivado and check resource utilization.
3. Program the Nexys A7 FPGA board and verify output on the seven-segment display.

