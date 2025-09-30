load trainingImagesAndBoxes
load firstTrainingImage
whos

detector = trainACFObjectDetector(imsWithBoxLabels,NumStages = 5)

[bbox,score] = detect(detector,frame)

frameLabeled = insertObjectAnnotation(frame,"rectangle",bbox,score)
imshow(frameLabeled)
