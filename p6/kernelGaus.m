function k = kernelGaus(x1, x2, sigma)
  
  numerador = sum((x1-x2).^2);
  k = e^(-numerador/(2*sigma^2));
  
endfunction