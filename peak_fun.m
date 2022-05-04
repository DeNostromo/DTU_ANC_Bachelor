function [b, a] = all_pass_fun(Fs, f0,dBgain, Q)
A=10^(dBgain/40);
w0=2*pi*(f0/Fs);
alpha=sin(w0)/(2*Q);

b0=1+alpha*A;
b1=-2*cos(w0);
b2=1-alpha*A;

a0=1+alpha/A;
a1=-2*cos(w0);
a2=1-alpha/A;

b=[b0 b1 b2];
a=[a0 a1 a2];
end