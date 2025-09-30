I = imread("IMG_001.jpg");
gs = im2gray(I);
gs = imadjust(gs);
H = fspecial("average",3);
gs = imfilter(gs,H,"replicate");

BW = imbinarize(gs,"adaptive","ForegroundPolarity","dark");
imshowpair(gs,BW,"montage")

SE = strel("disk",8)

Ibg = imclose(gs,SE)
imshow(Ibg)

gsSub = Ibg - gs
imshow(gsSub)

BWsub = ~imbinarize(gsSub)
imshow(BWsub)
