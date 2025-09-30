load trainedDetector
whos

turtleVideo = VideoReader("lotsOturtles_firstSec.avi")

while hasFrame(turtleVideo)
    % Read next video frame
    frame = readFrame(turtleVideo);

    % Detect turtles in the frame
    [bbox, score] = detect(detector, frame);

    % Apply thresholding
    idx = score > 30;
    bbox = bbox(idx, :);
    score = score(idx);

    % Non-maximum suppression
    [selectedBbox, selectedScore] = selectStrongestBbox(bbox, score, ...
        OverlapThreshold=0.1);

    % Number of turtles detected
    numBoxes = size(selectedBbox, 1);
    str = string(numBoxes) + " turtle(s) detected";

    % Annotate detections
    img = insertObjectAnnotation(frame, "rectangle", ...
        selectedBbox, "Turtle: " + selectedScore);

    % Add text about total detections
    img = insertText(img, [250 550], str, TextColor=[1 1 0]);

    % animate the vid
    imshow(img);        % show annotated frame
    drawnow;            % update the display immediately
end
