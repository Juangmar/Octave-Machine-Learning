clear;
load('ex6data3.mat');
[C, sigma] = generador(X, y, Xval, yval);
model= svmTrain(X, y, C, @(x1, x2) kernelGaus(x1, x2, sigma));
visualizeBoundary(X, y, model);