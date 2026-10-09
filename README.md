# Verilog Encoders and Decoders

This repository contains Verilog HDL implementations of a **4-to-2 encoder** and a **2-to-4 decoder**. Both designs include an enable input to control their operation, along with individual testbenches for functional verification using Icarus Verilog.

## 1. 4-to-2 Encoder

The 4-to-2 encoder converts one of four active input lines into a 2-bit binary output.

### Functionality

When the encoder is enabled, the active input is converted into its corresponding binary representation.

| Input | Output |
|---|---|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |

When the enable input is LOW (`en = 0`), the encoder outputs `00`.

The encoder is designed for one-hot inputs, meaning only one input bit should be HIGH at a time.

## 2. 2-to-4 Decoder

The 2-to-4 decoder performs the reverse operation of the encoder. It takes a 2-bit binary input and activates one of four output lines.

### Functionality

When the decoder is enabled, the 2-bit selection input determines which output bit becomes HIGH.

| Enable | Select | Output |
|---|---|---|
| 0 | XX | 0000 |
| 1 | 00 | 0001 |
| 1 | 01 | 0010 |
| 1 | 10 | 0100 |
| 1 | 11 | 1000 |

When the enable input is LOW (`en = 0`), all four output bits remain LOW.

When enabled, the decoder produces a one-hot output corresponding to the binary selection input.

## 3. Project Files

```text
verilog_encoders_-_decoders/
│
├── encoder.v
├── tb_encoder.v
├── decoder/
│   ├── decoder.v
│   └── tb_decoder.v
└── README.md
```

- `encoder.v` — Verilog implementation of the 4-to-2 encoder.
- `tb_encoder.v` — Testbench for the encoder.
- `decoder/decoder.v` — Verilog implementation of the 2-to-4 decoder.
- `decoder/tb_decoder.v` — Testbench for the decoder.
- `README.md` — Documentation for both designs.

## 4. Simulation

Both designs can be compiled and simulated using **Icarus Verilog**.

### Encoder Simulation

Compile the encoder and its testbench:

```bash
iverilog -o encoder_sim tb_encoder.v encoder.v
```

Run the simulation:

```bash
vvp encoder_sim
```

### Decoder Simulation

Compile the decoder and its testbench:

```bash
iverilog -o decoder_sim decoder/tb_decoder.v decoder/decoder.v
```

Run the simulation:

```bash
vvp decoder_sim
```

These commands assume they are executed from the repository's root directory. If a testbench already includes its design file using `` `include ``, compile the testbench alone to avoid duplicate module definitions.

The testbenches apply different input combinations to observe and verify the expected outputs.

## 5. Tools

- **Verilog HDL** — Hardware description language used to implement the circuits.
- **Icarus Verilog** — Compiler and simulator for Verilog designs.
- **GTKWave** — Waveform viewer for analyzing simulation results.
- **Visual Studio Code** — Development environment for writing and testing Verilog code.
- **Git/GitHub** — Version control and repository management.

## 6. Purpose

This repository was created to practice fundamental concepts in digital logic and computer engineering, including:

- Combinational logic design
- Binary encoding and decoding
- Boolean logic and truth tables
- Verilog HDL development
- Testbench creation and functional verification
- Digital circuit simulation
- Git and GitHub version control

These projects provide foundational experience for more advanced digital hardware designs, including multiplexers, arithmetic logic units (ALUs), finite state machines, and processor components.