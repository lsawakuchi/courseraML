%function to plot the data. Plot a scatter plot and
%set labels

function plotData(x,y)
  %create a new window to plot
  figure;
  
  plot(x,y, 'rx', 'MarkerSize', 10);
  ylabel('Profit in 10,000s');
  xlabel('Populaton in 10,000s');
 end
 
  
  
  