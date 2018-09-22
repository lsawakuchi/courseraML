%gradient descent to learn the parameters of the
%linear model

function [theta, J_history] = gradientDescent(X,y,alpha,num_iters)
  m = length(y);
  J_history = zeros(num_iters,1);
  
  theta = zeros(2,1);
  h = X*theta;
  
  f = alpha/m;
  
  for iter = 1:num_iters
    
    
    dif = X'*(h-y);
    
    theta = theta - f*dif
    h = X*theta;
   
    J_history(iter) = computeCost(X,y,theta)
    
     
  end;
  
end;
