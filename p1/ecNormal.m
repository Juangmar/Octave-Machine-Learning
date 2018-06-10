function [theta] = ecNormal(X,y)
  m = rows(y);
  x = [ones(m,1),X];
  theta = pinv(x' * x) * x' * y;
endfunction