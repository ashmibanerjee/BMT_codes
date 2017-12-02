function [Q,U]= my_QR(A)

[n,m]=size(A);

U=A;

U(:,1)= A (:,1);
Q(:,1)= U(:,1)/ (norm(U(:,1)));
p=zeros(n,n);

for i = 2: n
    
    N2=norm(U(:,i));
   
    Q(:,i)= U(:,i)/ N2;
    for j= 1 : i-1
       
        p(:,i)= projection(Q(:,j),A(:,i))+p(:,i);% sum of the projections
        
    end
    U(1:n,i)=A(1:n,i)-p(1:n,i);
end

end