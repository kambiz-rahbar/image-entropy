clc
clear
close all

i = imread('cameraman.tif');
heq_i = histeq(i);

[entopy_i] = calc_entropy(i);
[entopy_heq_i] = calc_entropy(heq_i);

subplot(1,2,1); imshow(i); title(sprintf('entropy: %f',entopy_i));
subplot(1,2,2); imshow(heq_i); title(sprintf('entropy: %f',entopy_heq_i));

