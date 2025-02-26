# DIGITAL_FIR_BANDPASS_FILTER
This repository about designing digital filters through matlab and verilog
# Band-Pass Filter Implementation
## INTRODUCTION
An FIR (Finite Impulse Response) filter is a digital filter commonly used in signal processing. It functions by convolving a finite-length input signal with a set of coefficients, known as filter taps, which define how the input is weighted and combined to generate the output. FIR filters are widely employed in various applications, including digital communication, due to their ease of implementation, inherent stability, and high performance. Their simplicity makes them ideal for applications requiring minimal computational resources.

## Overview
This repository contains the implementation of a Band-Pass Filter using Verilog and MATLAB. The project includes an FIR-based Band-Pass Filter (FIR_BP), a sine wave generator, a counter module, a testbench for verification, and MATLAB scripts for generating noisy signals to test the filter's performance.

## Repository Structure
```
├── Verilog_Code
│   ├── FIR_BP.v        # FIR Band-Pass Filter Implementation
│   ├── SineWave.v      # Sine Wave Generator Module
│   ├── Counter.v       # Counter Module
│   ├── FIR_BP_tb.v     # Testbench for FIR Band-Pass Filter
│
├── MATLAB_Code
│   ├── noisy_signal.m  # MATLAB script for generating noisy signals
│
├── README.md           # Project Documentation
```
## Design Specifications:
- **Band-Pass Frequencies:** fc1=13 Hz and fc2=17 Hz and fs=100 Hz and Window=Rectangular.
- **Tabs:** 10 tabs are used in this design.

## Features
- **FIR Band-Pass Filter:** A finite impulse response filter implemented in Verilog for signal processing applications.
- **Sine Wave Generator:** Produces a sine wave for testing the filter.
- **Counter Module:** A supporting counter used in the design.
- **Testbench:** Verification environment for functional validation.
- **MATLAB Noisy Signal Generator:** MATLAB script to generate and analyze noisy signals for filter testing.

## Getting Started
### Prerequisites
- **Verilog Simulation Tools:** Vivado .
- **MATLAB:** Required to Generate the noisy signal and store its coefficients for verilog testbench uses.

### Usage
1. **Simulate the Verilog Modules:**
   - Load `FIR_BP.v`, `SineWave.v`, and `Counter.v`, into the Verilog simulator.
   - Run the testbench (`FIR_BP_tb.v`) to observe the filter behavior.
2. **Generate Noisy Signals in MATLAB:**
   - Open `noisy_signal.m` in MATLAB.
   - write a scripts to generate the coefficients of noisy signal that will use in verilog testbench to verify filter functionality
   - Run the script to visualize noisy signals and observe filtering performance in MATLAB.
   - Save the cofficients in "binary.txt"file using file handling method in MATLAB.

## Results
- The band-pass filter successfully filters out unwanted frequency components.
- The testbench validates the Verilog modules with simulation waveforms.
- MATLAB-generated noisy signals provide input stimuli for filter validation.

## Future Improvements
- Implementing different filter coefficients for variable bandwidths.
- Optimizing filter efficiency using hardware description techniques.
- Extending the testbench for additional verification scenarios.

## Author
Abdul Basit



