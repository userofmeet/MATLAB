turtleVideo = VideoReader("turtles.avi")
frame = readFrame(turtleVideo);
imshow(frame)

frameMid= read(turtleVideo,50)
imshow(frameMid)
tMid = turtleVideo.currentTime

frameNext = readFrame(turtleVideo)
tNext = turtleVideo.currentTime

frameLast = read(turtleVideo,Inf);
imshow(frameLast)
tLast = turtleVideo.currentTime

turtleVideo.CurrentTime = 0
