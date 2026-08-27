`timescale 1ns/1ps

module home_automation (
    input logic ldr,
    input logic pir,
    input logic temp_high,
    input logic gas_detected,
    input logic remote_cmd,

    output logic light,
    output logic fan,
    output logic alarm
);

    assign light = (ldr & pir) | remote_cmd;
    assign fan = temp_high | remote_cmd;
    assign alarm = gas_detected | pir;

endmodule
