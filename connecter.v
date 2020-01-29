
module connecter(In,out0,out1,out2,out3);
input In;
output out0,out1,out2,out3;

buf buf0(out0,In);

buf buf1(out1,In);

buf buf2(out2,In);

buf buf3(out3,In);
endmodule
