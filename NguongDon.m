% Load ảnh và chuyển đổi sang ảnh xám
img = imread('2.jpg');
img_gray = rgb2gray(img);
% Chuyển đổi ảnh xám thành ảnh nhị phân với ngưỡng 0.5
level = 0.5;
img_binary = im2bw(img_gray, level);
% Hiển thị ảnh gốc và ảnh nhị phân
figure;
subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(img_binary);
title('Binary Image');
