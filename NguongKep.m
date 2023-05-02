% Ngưỡng kép
img = imread('2.jpg');
img_gray = rgb2gray(img);
threshold_low = 50;
threshold_high = 150;
img_binary = (img_gray > threshold_low) & (img_gray < threshold_high);
figure;
subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(img_binary);
title('Binary Image');
                            