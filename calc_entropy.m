function [entopy_img] = calc_entropy(img)

[m,n] = size(img);
N = m*n;

hist_img = imhist(img);
pdf_img = hist_img/N;
entopy_img = -sum(pdf_img.*log2(1+pdf_img));