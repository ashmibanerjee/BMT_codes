close all
clear all
clc

%reading and converting the image
I=double(imread('tire.tif'));



% decomposing the image using singular value decomposition
[U,S,V]=svd(I);
[m,n]= size(I);

% initialising the arrays for the x axis and y axis respectively for
% computing the error ( difference between the original and the computed
% image )
error_y = [];
error_x = [];
for i=5:50:n
    % storing the singular values in a temporary variable
    C = S;

    % discard the diagonal values not required for compression
    C(i+1:end,:)=0;
    C(:,i+1:end)=0;

    % Constructing an Image with the selected singular values in C
    D=U*C*V';


    % display and compute error
    figure;
    t = sprintf('Image output using %d singular values', i)
    imshow(uint8(D));
    title(t);
    error=sum(sum((I-D).^2)); %computing the error / change in D from I

    % store vals for display
    error_y = [error_y; error];
    error_x = [error_x; i];
end

% displaying the error graph
figure; 
title('Error in compression');
plot(error_x, error_y);
grid on
xlabel('Number of Singular Values used');
ylabel('Error between compressed and original image');
