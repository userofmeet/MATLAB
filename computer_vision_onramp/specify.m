load ACFdetector4tracking
turtleVideo = VideoReader("turtle.avi");
frame = readFrame(turtleVideo);
[bbox,score] = detect(detector,frame);
bbox = bbox(score>95,:);
score = score(score>95);
bbox = selectStrongestBbox(bbox,score, ...
    NumStrongest=1);

centroid = [bbox(:,1) + bbox(:,3)/2 , bbox(:,2) + bbox(:,4)/2];

% Draw a filled circle of radius 50 at the centroid
frame = insertShape(frame, "FilledCircle", [centroid 50], ...
    Color="green");

% Display the updated frame
imshow(frame)
