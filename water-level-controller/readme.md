
Description

This project implements an automatic Water Level Controller using Verilog HDL.

The system uses four water-level sensors to monitor the tank:

- 25% level
- 50% level
- 75% level
- 100% level

The controller automatically operates a water pump.

When the water level is below 25%, the pump turns ON.
When the tank reaches 100%, the pump turns OFF.

 Features

- Automatic water level monitoring
- Four water-level sensors
- Automatic pump control
- Active-high reset
- Clock-based operation
- Verilog testbench

Files

- `water_level_controller.v` - Main Verilog design
- `water_level_controller_tb.v` - Testbench
- `README.md` - Project documentation

 Inputs

| Signal | Description |
|--------|-------------|
| `clk` | System clock |
| `reset` | Active-high reset |
| `level_25` | 25% water-level sensor |
| `level_50` | 50% water-level sensor |
| `level_75` | 75% water-level sensor |
| `level_100` | 100% water-level sensor |

 Output

| Signal | Description |
|--------|-------------|
| `pump` | Water pump control |

Working Principle

| Water Level | Pump |
|-------------|------|
| Below 25% | ON |
| 25% | ON |
| 50% | ON |
| 75% | ON |
| 100% | OFF |

