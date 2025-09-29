img1 = imread("file01.jpg");
imshow(img1)

img2 = imread("file02.jpg");
imshow(img2)

img3 = imread("file03.jpg");
imshow(img3)

net = imagePretrainedNetwork
[net, classes] = imagePretrainedNetwork
[net,c] = imagePretrainedNetwork("googlenet")  % Importing another network by specifying a network name to imagePretrainedNetwork. [n,c] = imagePretrainedNetwork("name")

s = minibatchpredict(net,img1)  % Predict the subject of an image
c = scores2label(s, classes)  % class name with the highest score as the network's label for the image. You can get this label with the scores2label function. label = scores2label(scores,classNames)
c2 = scores2label(minibatchpredict(net,img2), classes)
c3 = scores2label(minibatchpredict(net,img3), classes)
