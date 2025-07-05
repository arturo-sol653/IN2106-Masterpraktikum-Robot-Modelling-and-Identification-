%% Init

close all;clear;clc;

g   = 9.81;

J  = 0.001;
d  = 0.1;
ke = 0.1;
km = 0.1;
L  = 0.01;
R  = 0.1;
m  = 1;
l  = 0.1375;
den = J+m*l^2;
%% Task 1

A = [0 1 0; -m*l*g/den -d/den km/den; 0 -ke/L -R/L];
B = [0 0 1/L]';
C = [1 0 0];
D = 0;

sys = ss(A,B,C,D);

%observer dynamics
q = [-15, -16, -17];
h = place(A', C', q)';

%% Task 2

%controllability

Qc = ctrb(A, B);
rank(Qc)

% char polynomial coeff
syms s
char_poly = det(s*eye(3) - A);
a = sym2poly(char_poly);

W = [a(3) a(2) 1; a(2) 1 0; 1 0 0];
T = Qc*W;
AR = inv(T)*A*T;

p_des = poly([-10,-10,-20]);

kR = flip(a(2:end) - p_des(2:end));
k = kR * inv(T);  

% check if desired eigenvalues are achieved
eig(A + B*k)

%% Task 4

A_dist = [A, [0; 1/den; 0]];
A_dist = [A_dist; [0 0 0 0]];

B_dist = [B;0];

C_dist = [C,0];

q_dist = [-20, -21, -22, -23];

h_dist = place(A_dist', C_dist', q_dist)'; 


