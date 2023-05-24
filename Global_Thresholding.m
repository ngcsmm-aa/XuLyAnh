% Phân ngưỡng toàn cục
x=imread('coins.png');
imshow(x);
title('Ảnh gốc');

figure;
x=im2double(x);
d=imbinarize(x);
imshow(d);
title('Ảnh phân ngưỡng toàn cục Matlab');

Id =x;
%Tạo ngưỡng T = mức xám nhỏ nhất + mức xám lớn nhất rồi chia đôi
T = 0.5*(min(min(Id))+max(max(Id)));
%Đặt điểm chênh lệch giữa ngưỡng mới và cũ
deltaT = 0.01;
done = false;
while ~done
    % Tạo ma trận tạm là g giống với ma trận ảnh Id với các điểm 
    % >= ngưỡng T thì là 1 ngược lại là 0
    g = Id >= T;
    Tnext = 0.5*(mean(Id(g)) + mean(Id(~g)));
    % Kiểm tra sự chênh lệch giữa ngưỡng mới và ngưỡng cũ
    % Nếu quá nhỏ tức < deltaT thì done = True(thoát vòng lập)
    % Ngược lại done vẫn = False thì lập tiếp
    done = abs(T - Tnext) < deltaT;
    % Ngưỡng cũ thành ngưỡng mới vừa tìm được
    T = Tnext;
end
figure;
imshow(x>=T);
title('Ảnh phân ngưỡng toàn cục tụi em');