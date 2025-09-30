w = imread("walksignal.jpg");
s = imread("stopsignal.jpg"); 
Test function with an image of a walk signal.
signal = checkCrosswalk(w);
title(signal)
Test function with an image of a stop signal.
signal = checkCrosswalk(s);
title(signal)

codegen checkCrosswalk -args {w} -config:lib -report
