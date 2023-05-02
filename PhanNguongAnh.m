% Load ảnh
img = imread('2.jpg');
% Chuyển đổi ảnh sang ảnh xám
gray_img = rgb2gray(img);
% Phân ngưỡng ảnh với giá trị ngưỡng 100
threshold = 100;
% Áp dụng phân ngưỡng cố định
bin_img = imbinarize(gray_img, threshold/255);
% Hiển thị ảnh gốc và ảnh nhị phân
subplot(1,2,1), imshow(img);
title('Original Image');
subplot(1,2,2), imshow(bin_img);
title('Thresholded Image');
