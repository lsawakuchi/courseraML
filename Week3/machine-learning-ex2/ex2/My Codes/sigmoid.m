%function to calculate the sigmoid function of a vector

function g = sigmoid(z)
  g = 1./(1 + exp(-z))
  
end;

