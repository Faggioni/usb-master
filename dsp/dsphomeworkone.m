clear all;
close all;
clc;

n = 0:30;
m = 0:30;
tr = ((-0.1)*n + 2) .* ( (n >= 0) - (n >= 20) );
p1 = 1.5 * ( (m >= 0) - (m >= 7) );
figure,stem(n,tr),grid;
figure,stem(m,p1),grid;
yr = conv(tr,p1);
yd = 0:length(yr) - 1;
figure,stem(yd,yr),grid;