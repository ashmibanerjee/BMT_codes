close all;
I= double(imread ('coins.png'));
image(I+500);
mesh(I);
imshow(uint8(I));