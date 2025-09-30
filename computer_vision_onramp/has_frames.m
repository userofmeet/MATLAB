turtleVideo = VideoReader("lotsOturtles_firstSec.avi");
frame = read(turtleVideo,28);
imshow(frame)
turtleVideo.CurrentTime

yesNo = hasFrame(turtleVideo)
if yesNo == 1 
    imshow(readFrame(turtleVideo))
end

yesNo2 = hasFrame(turtleVideo)
