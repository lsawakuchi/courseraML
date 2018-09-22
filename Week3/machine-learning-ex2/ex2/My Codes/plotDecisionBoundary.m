%predicting whether a student will be admitted or not
%using the model learned from the training set

function p = predict(theta, X)
  
  z = X*theta