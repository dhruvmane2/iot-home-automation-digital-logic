IoT-Based Home Automation System

Project Overview

This project presents an IoT-based Home Automation System using digital logic, ESP32, sensors, actuators, Wi-Fi remote control, and power optimization.

The system is designed to monitor home conditions and control appliances automatically or remotely. Digital logic is used to process inputs and generate appropriate control signals for the connected actuators.

Objectives

- Design a smart home automation system using digital logic.
- Interface sensors with the control system.
- Control home appliances using actuators.
- Provide Wi-Fi-based remote control.
- Implement automatic decision-making.
- Optimize power consumption.

Technologies Used

- SystemVerilog / Verilog HDL
- ESP32
- Digital Logic
- Sensors
- Actuators
- Wi-Fi
- Icarus Verilog
- EPWave / GTKWave
- GitHub

System Working

1. Sensors provide input data to the control system.
2. The digital logic processes the sensor inputs.
3. The system determines whether an appliance should be switched ON or OFF.
4. Actuators control the connected appliances.
5. Wi-Fi enables remote control of the system.
6. Power optimization logic helps avoid unnecessary appliance operation.
7. The design is verified using a SystemVerilog testbench and waveform simulation.

System Flow

Sensors
   |
   v
Digital Logic / ESP32
   |
   v
Decision Making
   |
   v
Actuator Control
   |
   v
Home Appliances
   ^
   |
Wi-Fi Remote Control

Power Optimization
        |
        v
Efficient Appliance Control

Main Components

Component| Function
ESP32| Main controller and Wi-Fi communication
Sensors| Detect environmental conditions
Digital Logic| Processes inputs and generates control signals
Actuators| Control home appliances
Wi-Fi| Provides remote control
Power Supply| Supplies electrical power

Features

- Automatic home appliance control
- Sensor-based operation
- Wi-Fi remote control
- Digital logic-based decision making
- Actuator control
- Power optimization
- Simulation and waveform verification

Simulation Files

The project contains:

- "design.sv" – Main SystemVerilog design
- "testbench.sv" – Testbench for verification
- "simulation/" – Simulation-related files
- "waveform.jpg" – Simulation waveform

Expected Output

The simulation verifies that the system responds correctly to sensor inputs and control commands.

Example:

==============================
 IoT HOME AUTOMATION SYSTEM
==============================

System Status: ACTIVE
Wi-Fi: CONNECTED

Sensor Input: NORMAL
Appliance 1: ON
Appliance 2: OFF

Remote Control: ENABLED
Power Optimization: ENABLED

Applications

- Smart homes
- Smart lighting
- Automatic fan control
- Remote appliance control
- Energy-efficient homes
- IoT-based monitoring systems

Learning Outcomes

This project provides practical understanding of:

- Digital logic design
- SystemVerilog programming
- ESP32-based IoT systems
- Sensor interfacing
- Actuator control
- Wi-Fi communication
- Testbench development
- Simulation and waveform analysis
- Power optimization

Author

Dhruv Mane

B.Tech – Electronics & Communication Engineering

License

This project is developed for educational and academic purposes.
