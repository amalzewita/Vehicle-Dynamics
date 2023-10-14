# MATLAB Symbolic Equation Solver for Vehicle Parameters

This repository provides a MATLAB script designed to solve a set of equations related to a vehicle's wheelbase and other properties. The script employs the Symbolic Math Toolbox to tackle the equations symbolically.

## Table of Contents

1. [Introduction](#introduction)
2. [Script Breakdown](#script-breakdown)
    - [Environment Preparation](#environment-preparation)
    - [Variable Declarations](#variable-declarations)
    - [Equation Definitions](#equation-definitions)
    - [Equation Solving](#equation-solving)
3. [Conclusion](#conclusion)

## Introduction

The MATLAB code is structured to solve for the variables `Kbf` and `Kbr`, which represent parameters related to a vehicle's properties. The calculations are symbolic, providing precise results.

## Script Breakdown

### Environment Preparation:
- `clc`: Clears the command window, ensuring a clean workspace.
- `clearvars`: Removes all variables from the workspace for a fresh start.

### Variable Declarations:
- `syms Kbf Kbr`: Introduces `Kbf` and `Kbr` as symbolic variables.
- `l1 = 1.454;`: Defines the `l1` variable with a value of 1.454.
- `l2 = 1.289;`: Sets the `l2` variable with a value of 1.289.
- `mu = 0.9;`: Initialises the coefficient of friction `mu` to 0.9.
- `h = 0.781;`: Assigns the height `h` with a value of 0.781.
- `fr = 0.015;`: Determines the `fr` variable with a value of 0.015.

### Equation Definitions:
- `eq1 = Kbf / Kbr == (l2 + h * (mu + fr)) / (l1 - h * (mu + fr));`: Constructs the first equation based on the provided variables.
- `eq2 = Kbf + Kbr == 1;`: Forms the second equation using the symbolic variables.

### Equation Solving:
- `sol = vpasolve([eq1, eq2], [Kbf, Kbr]);`: Utilizes the `vpasolve` function to symbolically deduce the solution for the system of equations, storing the results in the `sol` variable.

## Conclusion

The script efficiently computes the values of `Kbf` and `Kbr` in adherence to the set equations, leveraging MATLAB's Symbolic Math Toolbox for accuracy.
