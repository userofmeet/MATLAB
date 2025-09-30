load trainedDetector_sf4ns5
load anotherFrame
[bbox,score] = detect(detector,laterFrame);
img = insertObjectAnnotation(laterFrame,"rectangle",bbox,score);
imshow(img)

xlim([0 200])
ylim([0 300])

histogram(score,10)

score = score(score>30)
bbox = bbox(score>30, :)
Display the updated image.
% img = insertObjectAnnotation(laterFrame,"rectangle",bbox,score);
% imshow(img)
% xlim([0 200])
% ylim([0 300])

[selectedBbox,selectedScore  ] = selectStrongestBbox(bbox,score,OverlapThreshold= 0.1)
img2 = insertObjectAnnotation(laterFrame,"rectangle",selectedBbox,selectedScore);
imshow(img2)
