load ACFdetector4tracking
turtleVideo = VideoReader("turtle.avi");
frame = readFrame(turtleVideo);
[bbox,score] = detect(detector,frame);
bbox = bbox(score>95,:);
score = score(score>95);
bbox = selectStrongestBbox(bbox,score, ...
    NumStrongest=1);
centroid = [bbox(1)+bbox(3)/2  bbox(2)+bbox(4)/2];
frame = insertShape(frame,"filled-circle",[centroid 50],Color="green");
imshow(frame)

motionModel = "ConstantVelocity"

initialLoc = centroid

measurementNoise = 100

motionNoise = [1,25]

initialError = [1 25]

kf = configureKalmanFilter(motionModel, ...
     initialLoc, ...
     initialError, ...
     motionNoise, ...
     measurementNoise)
