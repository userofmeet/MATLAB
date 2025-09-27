function features = extractLetterFeatures(letter)

% Extract features
timeToWrite = letter.Time(end);
letterHeight = range(letter.Y);
letterWidth = range(letter.X);
firstXpos = letter.X(1);
lastXpos = letter.X(end-1);
firstYpos = letter.Y(1);
lastYpos = letter.Y(end-1);
numStrokes = sum(ismissing(letter.P));

% Combine features into a table
features = table(timeToWrite,letterHeight,letterWidth, ...
    firstXpos,lastXpos,firstYpos,lastYpos,numStrokes);

end

% This code displays the text filenames in the current folder.
ls("*.txt")
letterds = datastore("*.txt")
featds = transform(letterds, @extractLetterFeatures)
data = readall(featds)
c = extractBetween(letterds.Files,"_","_")
data.character = categorical(c)
