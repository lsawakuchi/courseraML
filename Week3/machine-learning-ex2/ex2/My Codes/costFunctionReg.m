function [J, grad] = costFunctionReg(theta, X, y,lambda)
  
  m = length(y); %number of training examples
  grad = zeros(length(theta),1);
  %Logistic Model with regularization
  %feature = mapFeature(X);
  z = X*theta;
  h = sigmoid(z);
  
  %Cost Function

  
  %regularization term
  reg = lambda/(2*m)*(theta'*theta - theta(1)^2);
  J = (-1/m)*(y'*log(h)) -(1/m)*(1 - y)'*log(1 - h) + reg;
  
  %Gradient
  
  g_reg = (lambda/m)*theta;
  g_reg(1) = 0;
  
  grad = (1/m)*(h - y)'*X + g_reg';
  
  
  
  
  
  