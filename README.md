# 4-to-2 Encoder

This project implements a **4-to-2 encoder in Verilog**. The encoder converts one of four active input lines into a 2-bit binary output. An enable input is also included to control the operation of the encoder.

## Functionality

When the encoder is enabled, the active input is converted into its corresponding 2-bit binary representation.

| Input | Output |
|------|------|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |

## Project Files

- `encoder.v` — Contains the Verilog implementation of the 4-to-2 encoder.
- `tb_encoder.v` — Contains the testbench used to simulate and verify the encoder.
- `README.md` — Documentation for the project.

## Simulation

The design can be compiled using Icarus Verilog:

```bash
iverilog -o encoder_sim tb_encoder.v encoder.v
```

Run the simulation with:

```bash
vvp encoder_sim
```

The testbench checks the encoder output for different input combinations.

## Tools

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

## Purpose

This project was created to practice combinational logic design, Verilog HDL, testbench development, and digital circuit simulation.