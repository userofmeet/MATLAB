img = imread("file01.jpg");
imshow(img)
[net,classes] = imagePretrainedNetwork("googlenet");
scores = minibatchpredict(net,img)

bar(scores)  % to visualise the bar chart

highscores = scores > 0.01  % logical array with the name highscores that has the value 1 (true) where scores is greater than 0.01.
bar(scores(highscores))  % logical indexing with visualization functions to visualize a subset of the prediction scores. 

xticklabels(classes(highscores))  % label the bars
