function [Q,R]= my_QR(A)

[n,m]=size(A);


Q = zeros(n,m);
R = zeros(n,m);
Q(:,1)= A(:,1)/ (norm(A(:,1))); %computing q1

%computing the U and the Q matrix
for i = 1:n
    
    Q(:,i) = A(:,i); % i-th column of Q is initialized to the i-th column of A
    for k = 1:i-1
      
       Q(:,i) = Q(:,i) - projection(A(:,i), Q(:,k));
    end
  
    Q(:,i) = Q(:,i)/norm(Q(:,i));
        
end


%calculating R matrix (upper triangular matrix)

for i=1:n
    for j=1:n
        if(i<=j) % checking if the position belongs to the upper triangle
            R(i,j)= dot (Q(:,i),A(:,j));
        end
    end
end
end