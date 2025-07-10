# SAR-ADC
# 🔄 12-bit SAR ADC Design using Verilog HDL

This repository contains a behavioral implementation of a **12-bit Successive Approximation Register (SAR) ADC** in Verilog. The design mimics the bit-by-bit conversion process by comparing a trial value with the input `vin`, one bit at a time, starting from the Most Significant Bit (MSB) down to the Least Significant Bit (LSB).

---

## 🧠 Project Overview

### ✅ What is SAR ADC?

A **Successive Approximation Register ADC** converts an analog input into a digital output by performing a binary search. At each clock cycle, one bit is decided based on whether the input `vin` is greater than or equal to a trial digital approximation.

This design simulates that process **digitally**, assuming a pre-digitized input (`vin`) and models the internal logic of the SAR control and decision-making.

---

## ⚙️ Design Specifications

- **Resolution**: 12-bit
- **Input**: 
  - `clk`: Clock signal
  - `rst`: Active-high reset
  - `vin[11:0]`: Input signal representing analog value in digital form (used for simulation)
- **Output**:
  - `dout[11:0]`: Final converted digital output
  - `done`: Conversion complete flag
- **Bit Decision Order**: MSB-first to LSB-last

---
# Output waveform
![waveform](https://github.com/user-attachments/assets/4767c007-73e2-4389-9d4e-883427a6d748)



