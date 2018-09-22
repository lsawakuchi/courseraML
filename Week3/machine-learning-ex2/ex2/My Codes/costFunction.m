%Cost Function and  Gradient for Logistic Regression

%Note X is the Design Matrix

function [J, grad] = costFunction(theta, X, y)
  m = length(y) %number of training examples
  
  %We need to return the following
  J = 0;
  grad = zeros(size(theta));
  
  %hypothesis for Logistic Regression
  z = X*theta;
  h = sigmoid(z);
  
  %computing Cost Function
  
  J = (-1/m)*(y'*log(h) + (1-y')*log(1-h));
  
  %computing the gradient
  
  grad = (1/m)*(h - y)'
  