function [C, sigma] = generador(X, y, Xval, yval)
  conjunto = [0.01 0.03 0.1 0.3 1 3 10 30];
  error_min = inf;
  
  for C = conjunto
  for sigma = conjunto
    model = svmTrain(X, y, C, @(x1, x2) kernelGaus(x1, x2, sigma));
    err   = mean(double(svmPredict(model, Xval) ~= yval));
    if( err <= error_min )
      C_final = C;
      sigma_final = sigma;
      error_min = err;
    end
  end
end

C = C_final;
sigma = sigma_final;
  
endfunction