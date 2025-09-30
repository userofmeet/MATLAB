load lotsOturtles_groundTruth.mat
gTruth

[imList, boxLabels] = objectDetectorTrainingData(gTruth,SamplingFactor=10,NamePrefix = "turtleFrame", WriteLocation = "trainingImages")

dir *.png

files = imList.Files

imsWithBoxLabels = combine(imList,boxLabels)
