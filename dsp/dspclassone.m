clear all;
close all;
clc;
% -5 le n ge 20
% y[n] = 2d[n+2] - d[n-4] + u[n-10]
% implementing using logical index
n1 = -5:20;
y1 = 2 * (n1 == -2) - (n1 == 4) + (n1 >=10);
%figure,stem(n1,y1),grid;

n2 = 0:30;
y2 = (0.9) .^ n2 .* (n2 >= 0);
%figure,stem(n2,y2),grid;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

na = -10:30;
ya = (0.95) .^ na .* (na>=0);
%figure,stem(na,ya),grid;

nb = 0:30;
yb = (0.5) .^ nb .* (nb >= 0);
%figure,stem(nb,yb),grid;

nc = -10:20;
yc = (-0.85) .^ nc .* (nc >= 0);
%figure,stem(nc,yc),grid;

nd = -5:20;
yd = 4 .* (nd >= 0) - 4 .* (nd >= 15);
%figure,stem(nd,yd),grid;

ne = 0:30;
ye = ( (1.05) .^ (ne - 5) ) .* ( (ne>=5) - (ne >=20) );
%figure,stem(ne,ye),grid;

nf = -10:30;
yf = 0.4 .* cos(0.2 * pi .* nf + (pi/6)) .* (nf >=0);
%figure,stem(nf,yf),grid;

ng = 0:60;
yg = 1.2 .* cos((pi .* ng / 20) + (pi/2)) .* (ng >=0);
%figure,stem(ng,yg),grid;

nh = -10:30;
yh = (0.93) .^ (nh+4) .* cos(0.1 * pi * ( (nh+4) )) .* (nh >= -4);
%figure,stem(nh,yh),grid;
