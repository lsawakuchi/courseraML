%loading data into Octave

cd 'C:\Users\lidia.tomoko.aparec1\Desktop\Lidia\ML\Week2\machine-learning-ex1\ex1\My codes'

my_data = load('ex1data1.txt');


x = my_data(:,1);
y = my_data(:,2);

%visualizing data in a scatter plot
figure;
plot(x,y,'rx', 'MarkerSize', 10);
ylabel('Profit in 10,000s');
xlabel('Population in 10,000s');

%number of training examples
m = length(y)

%addind the zeroth feature to the data
x = [ones(m,1), x]

%some GD settings

alpha = 0.01;
theta = zeros(2,1)
iterations = 1500;


