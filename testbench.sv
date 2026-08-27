`timescale 1ns/1ps

module testbench;

    logic ldr;
    logic pir;
    logic temp_high;
    logic gas_detected;
    logic remote_cmd;

    logic light;
    logic fan;
    logic alarm;

    home_automation dut (
        .ldr(ldr),
        .pir(pir),
        .temp_high(temp_high),
        .gas_detected(gas_detected),
        .remote_cmd(remote_cmd),
        .light(light),
        .fan(fan),
        .alarm(alarm)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        $display("========================================");
        $display("   IoT HOME AUTOMATION TEST");
        $display("========================================");

        ldr = 0;
        pir = 0;
        temp_high = 0;
        gas_detected = 0;
        remote_cmd = 0;

        #10;

        ldr = 1;
        pir = 0;
        temp_high = 0;
        gas_detected = 0;
        remote_cmd = 0;
        #10;

        $display("Test 1: Dark condition");
        $display("Light=%b Fan=%b Alarm=%b",
                 light, fan, alarm);

        ldr = 1;
        pir = 1;
        temp_high = 0;
        gas_detected = 0;
        remote_cmd = 0;
        #10;

        $display("Test 2: Motion detected");
        $display("Light=%b Fan=%b Alarm=%b",
                 light, fan, alarm);

        ldr = 0;
        pir = 0;
        temp_high = 1;
        gas_detected = 0;
        remote_cmd = 0;
        #10;

        $display("Test 3: High temperature");
        $display("Light=%b Fan=%b Alarm=%b",
                 light, fan, alarm);

        ldr = 0;
        pir = 0;
        temp_high = 0;
        gas_detected = 1;
        remote_cmd = 0;
        #10;

        $display("Test 4: Gas detected");
        $display("Light=%b Fan=%b Alarm=%b",
                 light, fan, alarm);

        ldr = 0;
        pir = 0;
        temp_high = 0;
        gas_detected = 0;
        remote_cmd = 1;
        #10;

        $display("Test 5: Remote control ON");
        $display("Light=%b Fan=%b Alarm=%b",
                 light, fan, alarm);

        ldr = 1;
        pir = 1;
        temp_high = 1;
        gas_detected = 1;
        remote_cmd = 1;
        #10;

        $display("Test 6: All sensors active");
        $display("Light=%b Fan=%b Alarm=%b",
                 light, fan, alarm);

        $display("========================================");
        $display("       TEST COMPLETED");
        $display("========================================");

        #10;
        $finish;
    end

endmodule
