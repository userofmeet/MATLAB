% This code sets up the Workspace for this activity.
load /CourseData/trainedFlowerNetwork.mat flowernet 
flwrds = imageDatastore("/CourseData/Flowers5/",IncludeSubfolders=true,LabelSource="foldernames");
[trainImgs,testImgs] = splitEachLabel(flwrds,0.93);
resizeTestImgs = augmentedImageDatastore([224 224],testImgs);
flwrScores = minibatchpredict(flowernet,resizeTestImgs);
c = categories(flwrds.Labels);
flwrPreds = scores2label(flwrScores,c);

a = testnet(flowernet,resizeTestImgs, "accuracy")
flwrActual = testImgs.Labels
confusionchart(flwrActual, flwrPreds)
