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

features = extractLetterFeatures(letter)
