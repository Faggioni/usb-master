close all;
clear all;
clc;
import numericalmethods.NewtonRaphson;
initCondition = [1;4];
iterationMax =10;
tolerance = 0.0001;
nr = NewtonRaphson(initCondition, iterationMax,tolerance);
sol = nr.solveHomework(1);
