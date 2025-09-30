turtleVideo = VideoReader("turtles.avi");
frame = readFrame(turtleVideo);
turtle = imcrop(frame,[0 170 250 100]);
turtleGS = im2gray(turtle);
frameGS = im2gray(frame);
imshowpair(turtleGS,frameGS,"montage")
pointsT = detectSIFTFeatures(turtleGS);
[featuresT,featurePointsT] = extractFeatures(turtleGS,pointsT);

pointsF = detectSIFTFeatures(frameGS);

% Extract features from the detected points
[featuresF, featurePointsF] = extractFeatures(frameGS, pointsF);

pairs = matchFeatures(featuresT,featuresF)

% Get the indices of the matched features in turtleGS
idxT = pairs(:,1);

% Use those indices to get the matched points in featurePointsT
matchedPointsT = featurePointsT(idxT);

% Get the indices of the matched features in frameGS
idxF = pairs(:,2);

% Use those indices to get the matched points in featurePointsF
matchedPointsF = featurePointsF(idxF);

showMatchedFeatures(turtleGS, frameGS, matchedPointsT, matchedPointsF, "montage");
title("Matched Features: Turtle vs. Frame");
