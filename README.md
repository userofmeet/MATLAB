# MATLAB Cheatsheet 📊

A general MATLAB reference for beginners and intermediate users.  
This repository contains examples and tips for working with MATLAB, including syntax, arrays, plotting, tables, and basic programming concepts.

---

## Table of Contents
- [Introduction](#introduction)
- [Basic Syntax](#basic-syntax)
- [Workspace and Desktop Management](#workspace-and-desktop-management)
- [Array Types](#array-types)
- [Vectors and Matrices](#vectors-and-matrices)
- [Array Indexing and Operations](#array-indexing-and-operations)
- [Multiple Outputs](#multiple-outputs)
- [Documentation](#documentation)
- [Plotting](#plotting)
- [Tables](#tables)
- [Logical Indexing](#logical-indexing)
- [Programming](#programming)

---

## Introduction
MATLAB is a high-level programming language used for numerical computing, data analysis, visualization, and algorithm development.  
This cheatsheet provides practical examples to quickly understand MATLAB’s core functionalities.

---

## Basic Syntax
```bash
x = pi       # Create variables and assign values
y = sin(-5)  # Call functions with parentheses
```

## Workspace and Desktop Management
``` bash
save data.mat      # Save workspace to a MAT-file
load data.mat      # Load variables from a MAT-file
clear              # Clear all variables
clc                # Clear Command Window
format long        # Change numeric output format
```

## Array Types
``` bash
4                 # Scalar
[3 5]             # Row vector
[1;3]             # Column vector
[3 4 5; 6 7 8]   # Matrix
```
## Vectors and Matrices
### Evenly Spaced Vectors
``` bash
1:4               # Vector from 1 to 4, step 1
1:0.5:4           # Vector from 1 to 4, step 0.5
linspace(1,10,5)  # 5 evenly spaced elements from 1 to 10
```
### Matrix Creation
``` bash
rand(2)           # 2x2 matrix with random values
zeros(2,3)        # 2x3 matrix of zeros
ones(2,3)         # 2x3 matrix of ones
```

## Array Indexing and Operations
### Indexing
``` bash
A(end,2)          # Element in last row, second column
A(2,:)            # Entire second row
A(1:3,:)          # First three rows
A(2) = 11         # Change second element to 11
```
### Operations
``` bash
[1 2; 3 4] + 1        # Array addition
[1 1; 1 1]*[2 2; 2 2] # Matrix multiplication
[1 1; 1 1].*[2 2; 2 2]# Element-wise multiplication
```
## Multiple Outputs
``` bash
[xrow,xcol] = size(x)  # Get number of rows & columns
[xMax,idx] = max(x)    # Maximum value & index
```
## Documentation
``` bash
doc randi         # Open MATLAB documentation for a function
```
## Plotting
``` bash
plot(x,y,"ro--",LineWidth=5)  # Red dashed line with circle markers
hold on                        # Add next line to current plot
hold off                       # Create new axes for next line
title("My Title")              # Add title
xlabel("x")                    # Label x-axis
ylabel("y")                    # Label y-axis
legend("a","b","c")            # Add legend
```
## Tables
``` bash
data.HeightYards                     # Extract table variable
data.HeightMeters = data.HeightYards*0.9144   # Derive new table variable
```
## Logical Indexing
``` bash
[5 10 15] > 12   # Compare elements to 12
v1(v1 > 6)       # Extract elements greater than 6
x(x==999) = 1    # Replace 999 with 1
```
## Programming
``` bash
Conditional Statements
if x > 0.5
    y = 3
else
    y = 4
end
```
## Loops
``` bash
for c = 1:3
    disp(c)
end
```
