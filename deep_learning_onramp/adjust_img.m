img = imread("file01.jpg");
imshow(img)

[net,classes] = imagePretrainedNetwork("googlenet");

sz = size(img)

summary(net)

img = imresize(img,[224 224]);
imshow(img)


%------------------FOR DATASTORE------------------
imds = imageDatastore("*.jpg")
[net,classes] = imagePretrainedNetwork("googlenet");

auds = augmentedImageDatastore([224,224], imds)

scores = minibatchpredict(net, auds)
preds = scores2label(scores, classes)
