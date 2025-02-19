## Implementing a Simple Combinational Circuit on FPGA

We have implemented a simple combinational circuit on our FPGA. This involves assigning I/O pins to our modules for synthesizing the designs on the FPGA. We have also use Vivado to burn our System Verilog code onto the FPGA.

### Steps to Follow

1. **Design the truth table for the circuit:** Use two 2 bits inputs and three outputs r,g and bl(blue) and solve operations used in the rtl file.

2. **Design the K maps for the r , g  and bl lights:** Design the k maps for all the outputs.

3. **Minimize the expression:** Minimize the expression obtained by all the k maps.

4. **Usage of expression:** Use the minimized expression to wrie an efficient code and draw the circuit.

5. **Draw.io:** Use draw.io to draw the circuit developed by minimized expressions.
   
6. **Design the System Verilog Code:** Implement the logic equation in System Verilog.

7. **Assign I/O Pins:** Map inputs and outputs to FPGA pins.

8. **Synthesize the Design:** Use Vivado to synthesize and implement the design.
 
9. **Design the testbench system verilog code:** Use code editor to write the test bench code and add it with the rtl file in a folder.

10. **Test bench on Modelsim:** Upload the folder on the Model sim and simuate bench file after compiling.
    
11. **Bit stream:** Generate the bitstream and copy it on to a usb and connect it to FPGA.

12. **Program the FPGA:** Burn the rtl System Verilog code onto the FPGA.

### Tools Required

- Xilinx Vivado Design 

- FPGA Development Board (NEXYS-A7)

- USB Programming Cable
 
- Model Sim

- Draw.io
