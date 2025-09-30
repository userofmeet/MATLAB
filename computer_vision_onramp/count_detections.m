load trainedDetector_sf4ns5  
load anotherFrame
[bbox,score] = detect(detector,laterFrame);
bbox = bbox(score>30,:);
score = score(score>30);
[selectedBbox,selectedScore] = selectStrongestBbox(bbox,score, ...
    OverlapThreshold=0.1);
img = insertObjectAnnotation(laterFrame,"rectangle", ...
    selectedBbox,selectedScore);
imshow(img)

numBoxes = size(selectedBbox,1)

str = string(numBoxes) + " turtle(s) detected"

imgCounted = insertText(img,[250 550],str)
imshow(imgCounted)
