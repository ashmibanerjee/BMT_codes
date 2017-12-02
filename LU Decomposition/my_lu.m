% Compute Multipliers for Column 1
% This process creates the matrix L one component (multiplier) at a time and overwrites rows in U

% L(2,1) = U(2,1)/U(1,1)  % multiplier to make U(2,1)=0
% U(2,1:4) = U(2,1:4)-L(2,1)*U(1,1:4)  % [row 2] - L(2,1) *[row 1]=[row 2]
% L(3,1) = U(3,1)/U(1,1) % multiplier to make U(3,1)=0
% U(3,1:4) = U(3,1:4)-L(3,1)*U(1,1:4)  % [row 3] - L(3,1) *[row 1]=[row 3]
% L(4,1) = U(4,1)/U(1,1) % multiplier to make U(4,1)=0
% U(4,1:4) = U(4,1:4)-L(4,1)*U(1,1:4)  % [row 4] - L(4,1) *[row 1]=[row 4]

% Compute Multipliers for Column 2
% L(3,2) = U(3,2)/U(2,2) % multiplier to make U (3,2)=0
% U(3,2:4) = U(3,2:4)-L(3,2)*U(2,2:4)  % [row 3] - L(3,2) *[row 2]= [row 3]
% L(4,2) = U(4,2)/U(2,2) % multiplier to make U(4,2)=0

% U(4,2:4) = U(4,2:4)-L(4,2)*U(2,2:4)  % [row 4] - L(4,2)*[row 2]=[row 4]

% and so on...


function [L,U]= my_lu(A)
n=size (A,1);
L=eye(n);
U=A;

for k=1 : n-1
for j=k+1 : n
    L(j, k)= U(j,k)/ U(k,k);
    
    U(j,k:n)= U(j,k:n)-(L(j,k)*U(k,k:n));
end
    
end
% for j=1:3
% for i=j+1:4
% L(i,j)=U(i,j)/U(j,j);
% U(i,j:4)=U(i,j:4) - L(i,j)*U(j,j:4);
% end
% end
