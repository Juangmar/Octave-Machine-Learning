function p = regresionLineal(x, theta, mu, sigma)
  mu = [0 mu];
  sigma = [1 sigma];
  xNorm = (x-mu)./sigma;
  p = xNorm*theta;
endfunction