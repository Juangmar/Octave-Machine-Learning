function [J, grad] = costeR(theta, X, y, lambda)
    m = length(y);
    h = funcionSigmoide(X*theta);
    
    aux = theta(2:size(theta));
    reg = [0;aux];
    
    J = (1/m)*(-y'* log(h) - (1 - y)'*log(1-h))+(lambda/(2*m))*reg'*reg;
    
    grad = (1/m)*(X'*(h-y)+lambda*reg);
 
 end