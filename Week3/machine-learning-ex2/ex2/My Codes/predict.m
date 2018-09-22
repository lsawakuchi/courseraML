%predicting whether a student will be admitted or not
%using the model learned from the training set

function p = predict(theta, X)
  
  z = X*theta;
  h = sigmoid(z);
  
  p = zeros(m,1);
  
  for i = 1:m
    if (h(i) >= 0.5)
      p(i) = 1;
    else 
      p(i) = 0;
    end;
      
  end;
  
 end
  
  
    