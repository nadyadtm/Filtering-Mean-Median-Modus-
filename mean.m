x = imread('median_rgb1.png');%Name of image file
[tinggi, lebar, panjang]=size(x);
image_baru=double(x);
for i=2 : tinggi-2
    for j=2 : lebar-2
        jum=image_baru(i-1,j-1,:)+image_baru(i,j-1,:)...
            + image_baru(i+1,j-1,:)+image_baru(i-1,j,:)...
            + image_baru(i,j,:)+image_baru(i+1,j,:)...
            +image_baru(i-1,j+1,:)+image_baru(i,j+1,:)...
            +image_baru(i+1,j+1,:);
        img(i-1,j-1,:)=floor(jum/9);
    end
end
figure
subplot(1,2,1), subimage(x)
subplot(1,2,2), subimage(uint8(img))