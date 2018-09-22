%computes the Cost Function

function J = computeCost(X,y,theta)
  m = length(y)
  J = 0
  
  h = X*theta;
  sqrError = (h - y).^2;
  
  J = 1/(2*m)*sum(sqrError);
  