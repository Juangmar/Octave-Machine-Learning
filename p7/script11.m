%clear;
%load('ex7data2.mat');
%initial_centroids = [3 3; 6 2; 8 5];
%runkMeans(X, initial_centroids, 10, true);

clear;
load('ex7data2.mat');
randidx = randperm(size(X,1));
centroides = X(randidx(1:3), :);
runkMeans(X, centroides, 10, true);