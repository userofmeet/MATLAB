I = imread("IMG_002.jpg");
gs = im2gray(I);
gs = imadjust(gs);
H = fspecial("average",3);
gs = imfilter(gs,H,"replicate");
SEdisk = strel("disk",8);
Ibg = imclose(gs,SEdisk);
gsSub =  Ibg - gs; 
BW = ~imbinarize(gsSub);
imshowpair(I,BW,"montage")

SE = strel("rectangle",[3 25]);

BWstripes = imopen(BW,SE)
imshow(BWstripes)

S = sum(BWstripes,2)
plot(S)

Sbw = sum(BW,2)
hold on 
Sbw = sum(BW,2)
plot(Sbw)
hold off
