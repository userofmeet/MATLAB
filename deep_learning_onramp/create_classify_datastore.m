ls *.jpg
[net,classes] = imagePretrainedNetwork("googlenet");

imds = imageDatastore("*.jpg")  % datastore called imds that refers to the image files with the *.jpg extension in the current folder

fname = imds.Files  % get the file names of the images

img = readimage(imds,7)  % import the image in file07 (the seventh file in the datastore)
imshow(img)

net = imagePretrainedNetwork("googlenet")  % make predictions for the entire collection of images.
scores = minibatchpredict(net, imds)

preds = scores2label(scores, classes)  % class names with the highest score from the variable scores
