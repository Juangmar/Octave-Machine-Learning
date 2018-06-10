function centroids = computeCentroids(X,idx,K)
  for k = 1:K
    Ck = 0;
    sum = zeros(columns(X), 1);
    for i = 1:rows(X)
      if ( idx(i) == k )
       sum = sum + X(i, :)';
       Ck = Ck + 1;
      end
    end
    centroids(k, :) = (sum/Ck)';
  end
endfunction