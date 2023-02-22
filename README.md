# LFSR
A Linear Feedback Shift Register(LFSR) is a shift register whose input bit is the output of a linear function of two or more of its previous states.
* Generally Xnor or Xor is used as a linear feedback. I have used Xnor of data bit 3 and data bit 7 as feedback to data bit 0.

## Toolchain
* Xilinx ISE for synthesis
* Isim for simulation

### RTL schematic
![image](https://user-images.githubusercontent.com/76483382/220621574-4d8ece81-566f-4bdb-947d-6a9d0d1a49fb.png)
