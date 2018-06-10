function c = computeCostMulti(x,y,t)
   c = (x * t - y)' * (x * t - y) / (2*rows(y));
endfunction