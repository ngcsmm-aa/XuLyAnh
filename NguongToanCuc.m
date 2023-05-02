%Ngưỡng toàn cục
img = imread('2.jpg');
img_gray = rgb2gray(img);
threshold = 128;
img_binary = imbinarize(img_gray, threshold/255); % áp dụng ngưỡng
figure;
subplot(1, 2, 1);
imshow(img);
title('Original Image');
subplot(1, 2, 2);
imshow(img_binary);
title('Binary Image');
