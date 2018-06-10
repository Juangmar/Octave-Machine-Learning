clear;
A = double(imread('bird_small.png'));
A = A/255;
imagesc(A);
pause;



tamanio = size(A);
X = reshape(A, tamanio(1) * tamanio(2), 3);

K = 16; %16 colores
randidx = randperm(size(A,1));
init_centroid = X(randidx(1:K), :);
[centroides, idx] = runkMeans(X, init_centroid, 10);

idx = findClosestCentroids(X, centroides);

A_new = centroides(idx,:);

A_new = reshape(A_new, tamanio(1), tamanio(2), 3);
imagesc(A_new);
