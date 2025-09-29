img = imread("file01.jpg");
imshow(img)

[net,classes] = imagePretrainedNetwork("googlenet");

sz = size(img)

summary(net)

img = imresize(img,[224 224]);
imshow(img)
