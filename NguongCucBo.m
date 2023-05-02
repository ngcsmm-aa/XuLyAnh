% Ngưỡng cục bộ bằng phép trượt cửa sổ
img = imread('2.jpg');
img_gray = rgb2gray(img);
window_size = 21;
threshold = adaptthresh(img_gray, 0.5, 'NeighborhoodSize', window_size);
img_binary = imbinarize(img_gray, threshold);
figure;
subplot(1, 2, 1);
imshow(img);
title('Original Image');
subplot(1, 2, 2);
imshow(img_binary);
title('Binary Image');
