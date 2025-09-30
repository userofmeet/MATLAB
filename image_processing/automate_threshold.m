img = imread("IMG_001.jpg");
gs = im2gray(img);
gsAdj = imadjust(gs);
imshow(gsAdj)

BW = imbinarize(gsAdj);
imshow(BW)

BWadapt = imbinarize(gsAdj,"adaptive");
imshowpair(gsAdj,BWadapt,"montage")

BWadapt = imbinarize(gsAdj,"adaptive","ForegroundPolarity","dark")
imshowpair(gsAdj, BWadapt,"montage")
