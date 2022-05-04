function [b, a] = low_shelf(Fs, f0, dBgain, Q)
A=10^(dBgain/40);
w0=2*pi*(f0/Fs);
alpha=sin(w0)/(2*Q);

b0=A*((A+1)-(A-1)*cos(w0)+2*sqrt(A*alpha));
b1=2*A*((A-1)-(A+1)*cos(w0));
b2=A*((A+1)-(A-1)*cos(w0)-2*sqrt(A*alpha));

a0=(A+1)+(A-1)*cos(w0)+2*sqrt(A*alpha);
a1=-2*((A-1)+(A+1)*cos(w0));
a2=(A+1)+(A-1)*cos(w0)-2*sqrt(A*alpha);

b=[b0 b1 b2];
a=[a0 a1 a2];
end