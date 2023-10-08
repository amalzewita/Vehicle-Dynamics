clc
clearvars

syms Kbf Kbr
% wheelbase
l1 = 1.454;              
l2 = 1.289;      
mu = 0.9; % coff of friction 
h = 0.781; % height of CG
fr = 0.015; % rolling coefficient

eq1 = Kbf / Kbr == (l2 + h * (mu + fr)) / (l1 - h * (mu + fr));
eq2 = Kbf + Kbr == 1;
sol = vpasolve([eq1, eq2], [Kbf, Kbr]);
