clear;
load('ex6data2.mat');
model = svmTrain(X,y,1, @(x1,x2) kernelGaus(x1,x2,0.1));
visualizeBoundary(X, y, model);