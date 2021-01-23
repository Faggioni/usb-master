close all;
clear all;
clc;
import newtonraphson.NewtonRaphson;
initCondition = [1;4];
numberMaxOfIterations = 25;
tolerance = 0.0001;
nr = NewtonRaphson(initCondition, numberMaxOfIterations,tolerance);
sol = nr.solve();

