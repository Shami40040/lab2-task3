module Top_level(clock_in, SW, LED);
input clock_in;
input [1:0] SW;
output [15:0] LED;

Blinky_1Hz inst0(clock_in, clock_out_1);
Blinky_5Hz inst1(clock_in, clock_out_5);
Blinky_10Hz inst2(clock_in, clock_out_10);
Blinky_20Hz inst3(clock_in, clock_out_20);

and and1(clock_out_11, clock_out_1, ~SW[0], ~SW[1]);
and and2(clock_out_55, clock_out_5, ~SW[0], SW[1]);
and and3(clock_out_1010, clock_out_10, SW[0], ~SW[1]);
and and4(clock_out_2020, clock_out_20, SW[0], SW[1]);

connecter c0(clock_out_11, LED[0], LED[1], LED[2], LED[3]);
connecter c1(clock_out_55, LED[4], LED[5], LED[6], LED[7]);
connecter c2(clock_out_1010, LED[8], LED[9], LED[10], LED[11]);
connecter c3(clock_out_2020, LED[12], LED[13], LED[14], LED[15]);

endmodule
