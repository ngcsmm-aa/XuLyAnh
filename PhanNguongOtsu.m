% Load ảnh
img = imread('2.jpg');

% Chuyển đổi ảnh sang ảnh grayscale
gray_img = rgb2gray(img);

% Áp dụng phân ngưỡng Otsu
threshold = graythresh(gray_img);
bin_img = imbinarize(gray_img, threshold);

% Hiển thị ảnh gốc và ảnh nhị phân
subplot(1,2,1), imshow(gray_img);
title('Original Image');
subplot(1,2,2), imshow(bin_img);
title('Otsu Thresholded Image');
