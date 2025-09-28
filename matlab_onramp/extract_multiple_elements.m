% This code sets up the activity.
data = [3 0.53 4.0753 NaN;18 1.78 6.6678 2.1328;19 0.86 1.5177 3.6852;20 1.6 3.6375 8.5389;21 3 4.7243 10.157;23 6.11 9.0698 2.8739;38 2.54 5.30023 4.4508]

% Create a column vector named density that contains all the elements from the 2nd column of the matrix named data.
density = data(:,2)

% Create a variable volumes that contains the last two columns of data.
volumes = data(:, end-1:end);

% Create a variable named p containing the 6th element of the vector density.
p = density(6)

% Create a vector named q containing the 2nd through 5th elements of density.
q = density(2:5)
