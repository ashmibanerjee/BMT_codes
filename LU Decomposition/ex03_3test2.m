% solution only works when A is invertible and diagonally dominant

close all;
clear;
clc;
%A=[3,2,-1,2;-3,-4,2,1;6,2,-2,11;-6,-10,6,2];
A= rand(5,5)+5*eye(5);
disp('A');
disp(A);
[l,u]= my_lu(A);
disp (' My L');
disp(l);
disp ('My U');
disp(u);
disp('My Original');
disp(l*u);
[L,U]=lu(A);
disp('L');
disp(L);
disp('U');
disp(U);
disp('Original');
disp(L*U);