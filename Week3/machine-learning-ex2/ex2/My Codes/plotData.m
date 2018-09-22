function plotData(X,y)
  figure;
  hold on;
  
  %positive examples
  %find() returns the indexes specified by the condition
  %in the argument
  
  pos = find(y == 1);
  neg = find(y == 0);
  
  %plot positive examples in black crosses
  plot(X(pos,1), X(pos,2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
  
  %plot negative examples in circles filled in yellow and circle black
  plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
  
  %xlabel('Exam 1 score');
  %ylabel('Exam 2 score');
  
  %Legend specified in plot order
  
  %legend('Admitted', 'Not Admitted');
  
  hold off;
  
  end