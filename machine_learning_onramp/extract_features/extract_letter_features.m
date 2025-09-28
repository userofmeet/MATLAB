timeToWrite = letter.Time(end)
letterHeight = range(letter.Y)
letterWidth = range(letter.X)
features = table(timeToWrite, letterHeight, letterWidth)

firstXpos = letter.X(1)
lastXpos = letter.X(end - 1)
firstYpos = letter.Y(1)
lastYpos = letter.Y(end - 1)
