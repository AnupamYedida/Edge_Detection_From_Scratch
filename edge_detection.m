clc;
clear all;
close all;

orig_1=imread('/home/anupam//Pictures/test.jpg');
gray_1=rgb2gray(orig_1);
final_1=double(gray_1);


orig_2=imread('/home/anupam//Pictures/kylo.png');
gray_2=rgb2gray(orig_2);
final_2=double(gray_2);


orig_3=imread('/home/anupam//Pictures/flash.png');
gray_3=rgb2gray(orig_3);
final_3=double(gray_3);



    

sobel_kernel_x = [-1 0 1 ; -2 0 2; -1 0 1];
sobel_kernel_y = [-1 -2 -1 ; 0 0 0 ; 1 2 1] ;

final_x_1 = conv2(final_1, sobel_kernel_x);
final_y_1 = conv2(final_1, sobel_kernel_y);
%edges_1  = sqrt(final_x_1.^2 + final_y_1.^2);
edges_1  = (final_y_1);
edges_1_2  = (final_x_1);


final_x_2 = conv2(final_2, sobel_kernel_x);
final_y_2 = conv2(final_2, sobel_kernel_y);
edges_2  = sqrt(final_x_2.^2 + final_y_2.^2);



final_x_3 = conv2(final_3, sobel_kernel_x);
final_y_3 = conv2(final_3, sobel_kernel_y);
edges_3  = sqrt(final_x_3.^2 + final_y_3.^2)



subplot(331),imshow(orig_1); title('Original Image');
subplot(332),imshow(edges_1_2); title('x-edges');
subplot(333),imshow(edges_1); title('y-Edges');
subplot(334),imshow(orig_2); title('Original Image');
subplot(335),imshow(gray_2); title('Grayscaled Image');
subplot(336),imshow(edges_2); title('Edges');
subplot(337),imshow(orig_3); title('Original Image');
subplot(338),imshow(gray_3); title('Grayscaled Image');
subplot(339),imshow(edges_3); title('Edges');




