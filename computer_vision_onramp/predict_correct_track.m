load ACFdetector4tracking
turtleVideo = VideoReader("turtle.avi");
frame = readFrame(turtleVideo);
 Make detections.
[bbox,score] = detect(detector,frame);
bbox = bbox(score>95,:);
score = score(score>95);
bbox = selectStrongestBbox(bbox,score, ...
    NumStrongest=1);
centroid = [bbox(1)+bbox(3)/2  bbox(2)+bbox(4)/2];
frame = insertShape(frame,"filled-circle",[centroid 50],Color="green");
imshow(frame) 

% Initialize Kalman filter.
motionModel = "ConstantVelocity";
initialLoc = centroid;
initialError = [1 25];
motionNoise = [1 25];
measurementNoise = 100;
kf = configureKalmanFilter(motionModel,initialLoc,initialError,motionNoise,measurementNoise);

trackedLoc = predict(kf)

% Read and process the next frame.
frame = readFrame(turtleVideo);
[bbox,score] = detect(detector,frame);
bbox = bbox(score>95,:);
score = score(score>95);
strongestBbox = selectStrongestBbox(bbox,score,NumStrongest=1);
centroid = [strongestBbox(1)+strongestBbox(3)/2  strongestBbox(2)+strongestBbox(4)/2];
frame = insertShape(frame,"filled-circle",[centroid 50],Color="green");

trackedLoc = correct(kf,centroid )

frame = insertShape(frame,"filled-circle",[trackedLoc 20],Color="red");
imshow(frame)
