x = imread('median_rgb1.png');%Name of image file
[tinggi, lebar, panjang]=size(x);
image_baru=double(x);
for i=2 : tinggi-2
    for j=2 : lebar-2
%         temp = image_baru(i-1:i+1,j-1:j+1,:);
        for k=1 : 3
            temp(1) = image_baru(i-1,j-1,k);
            temp(2) = image_baru(i,j-1,k);
            temp(3) = image_baru(i+1,j-1,k);
            temp(4) = image_baru(i-1,j,k);
            temp(5) = image_baru(i,j,k);
            temp(6) = image_baru(i+1,j,k);
            temp(7) = image_baru(i-1,j+1,k);
            temp(8) = image_baru(i,j+1,k);
            temp(9) = image_baru(i+1,j+1,k);
            img(i-1,j-1,k)=mode(temp);
        end
    end
end

figure
subplot(1,2,1), subimage(x)
subplot(1,2,2), subimage(uint8(img))