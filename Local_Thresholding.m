% Phân ngưỡng cục bộ
img=imread('coins.png');
imshow(img);
title('Ảnh gốc');

window_size = 5;
threshold = adaptthresh(img, 0.4, 'NeighborhoodSize', window_size);
bw = imbinarize(img, threshold);
figure;
imshow(bw);
title('Ảnh phân ngưỡng cục bộ Matlab');

% Cho kích thước của khối
windowSize=5;
[x,y]=size(img);
face=zeros(x,y);
% Tính trung bình trong khối để lấy ra ngưỡng tại điểm i,j
for i=1:x
    % Tính dòng bắt đầu
    sr=i-uint64(windowSize/2)+1;
    % Tính dòng kết thúc
    er=i+uint64(windowSize/2)-1;
    % Nếu dòng kết thúc vượt quá phạm vi ảnh thì dòng kết thúc là dòng cuối
    if er>=x
        er=x;
    end
    for j=1:y
        % Tính cột bắt đầu
        sc=j-uint64(windowSize/2)+1;
        % Tính cột kết thúc
        ec=j+uint64(windowSize/2)-1;
        % Nếu cột kết thúc vượt quá phạm vi ảnh thì dòng kết thúc là cột cuối
        if ec>=y
            ec=y;
        end
        % Lấy ra khối vd: windowSize=3 thì block sẽ là 3x3 => block=img(1:3,1:3)
        % block =   1 1 1
        %           1 1 1
        %           1 1 1
        block=img(sr:er,sc:ec);
        % Tính trung bình trong khối rồi đưa vào điểm ảnh i,j
        face(i,j)=sum(sum(block))/windowSize^2;
    end
end
% Tạo ảnh mới bằng cách so sánh ngưỡng
bw = img > face + 20;
figure;
imshow(bw);
title('Ảnh phân ngưỡng cục bộ của tụi em');