close all
clc
clearvars

%% Assign values to variables

m1    = 10;
m2    = 7;
l1    = 1; 
lc1   = l1/2 ;
l2    = 1;
lc2   = l2/2;
h1    = 0.1;
delta = 0.05;
g     = 9.81;

I_com1 = diag([1/12*m1*(h1^2 + h1^2), 1/12*m1*(l1^2 + h1^2), 1/12*m1*(l1^2 + h1^2)]); 
I_com2 = diag([1/12*m2*(h1^2 + h1^2), 1/12*m2*(l2^2 + h1^2), 1/12*m2*(l2^2 + h1^2)]); 

[I1xx, I1xy, I1xz, I1yy, I1yz, I1zz] = deal(I_com1(1,1),I_com1(1,2),I_com1(1,3),I_com1(2,2),I_com1(2,3),I_com1(3,3));
[I2xx, I2xy, I2xz, I2yy, I2yz, I2zz] = deal(I_com2(1,1),I_com2(1,2),I_com2(1,3),I_com2(2,2),I_com2(2,3),I_com2(3,3));

T_s=0.001;

%%
tau_up = 200;
tau_down = -200;

%TASK 1
% Kp = [50,50];
% Kd = [25,25];
% Ki = [23,23];

%TASK 2
% ksi= 0.7;
% omega = 8;
% kp= omega*omega;
% kd= 2*ksi*omega;
%   Kp = [kp,kp];
%   Kd = [kd,kd];
%  Ki = [30,30];
 
 %TASK 3
ksi= 0.7;
omega = 8;
kp= omega*omega;
kd= 2*ksi*omega;
  Kp = [kp,kp];
  Kd = [kd,kd];
  Ki = [11,11];
