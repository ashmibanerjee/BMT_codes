close all;
clc;
clear;
%A=rand (5,5);
 
% p(1:5,1)= projection(A(1:5,1), A(1:5,3)); 
% disp(p);
A=[1,2,1;2,2,1;1,2,3]
% z=(norm(A(1:3,1)));
% disp(z);
[Q,R]=my_QR(A);
disp('My Q');
disp(Q);
disp('My R');
disp(R);
disp('My original');
disp(Q*R);
[q,r]=qr(A);
disp('Q');
disp(q);
disp('R');
disp(r);
disp('Original');
disp(q*r);