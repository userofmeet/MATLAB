% This code loads the training information of flowernet.
load /CourseData/trainedFlowerNetwork.mat flowernet info

% save the training history table to a variable called th
th = info.TrainingHistory

% plot Loss
plot(th.Loss)

% This code creates a datastore of the flower images.
dsflowers = imageDatastore("/CourseData/Flowers5/",IncludeSubfolders=true,LabelSource="foldernames");
[trainImgs,testImgs] = splitEachLabel(dsflowers,0.99);
resizeTestImgs = augmentedImageDatastore([224 224],testImgs);

% obtain the scores flowernet predicts for the images in the resizeTestImgs datastore
flwrScores = minibatchpredict(flowernet, resizeTestImgs)

% flower categories in a variable named classes. labels from the dsflowers datastore.
classes = categories(dsflowers.Labels)
flwrPreds = scores2label(flwrScores, classes)
