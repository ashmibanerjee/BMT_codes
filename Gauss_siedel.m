close all;
clear;
clc;
A=[16,3;7,-11];
B=[11;13];
n= size(B,1); % no of rows
X= zeros(n,1);
X(1,1)=1;
p=zeros(n,1);
for i= 1: 5
  % X(i,1)= B(i,1)- ((A(i,1:end).*X(1:end)) -(A(i,i)*X(i,1)))/A(i,i);
  
 p= A(i,1:end).*X(1:end);
end
disp(p);