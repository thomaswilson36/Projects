% Define variables
a = 5.23e-3; % a decimal number in scientific notation
b = 4+5i; % a complex number with real part 4 and imaginary part 5i
c = sind(30); % the sine of 30 degrees, returned in radians
d = log10(3); % the base 10 logarithm of 3

% Perform mathematical operations
p = c^2 + d^a; % calculate the sum of the square of c and d raised to the power of a
q = (b^2 + 3d + (ad))/(ac); % calculate a complex expression using b, d, and c
r = 20a - d - exp(3); % calculate a decimal number using a, d, and the exponential function

% Define matrices
A = [2 -3 1; 3.8 5 5; 2 -2 0]; % a 3x3 matrix with decimal numbers as elements
B = [1 -2 -0.9; 2 3e-8 5]; % a 2x3 matrix with a mix of integer and scientific notation elements
f = [1; 4; 5]; % a 3x1 column vector with integer elements
g = [(20 + i) (-8 -i)]; % a 1x2 row vector with complex elements

% Calculate using matrices and vectors
P = (A^(1/3))f + 5; % calculate using matrix exponentiation and vector multiplication
Q = gBf; % calculate using matrix multiplication and vector multiplication
R = BA^4; % calculate using matrix exponentiation and matrix multiplication

% Solve a system of linear equations
N = [1 2 -0.2; 0 -3 6; 1 1 -9]; % a 3x3 matrix with decimal numbers as elements
M = [5; 3; 1]; % a 3x1 column vector with integer elements
X = inv(N)*M; % calculate the solution vector to the system of linear equations
x_1 = X(1); % extract the first element of the solution vector
x_2 = X(2); % extract the second element of the solution vector
x_3 = X(3); % extract the third element of the solution vector

% Create and display plots
xa = linspace(0, 6); % create a vector of linearly spaced values between 0 and 6
ya = 10*xa + 3; % create a vector using a linear function of xa
figure; % create a new figure
plot(xa, ya); % plot the vectors xa and ya
xlabel('x'); % label the x-axis as 'x'
ylabel('y'); % label the y-axis as 'y'
title('graph xa'); % add a title to the plot

xb = linspace(0, 2pi); % create a vector of linearly spaced values between 0 and 2pi
yb = sin(xb) + 1.5*cos(xb+(pi/3)); % create a vector using a combination of sine and cosine functions
figure; % create a new figure
plot(xb, yb); % plot the vectors xb and yb
xlabel('x'); % label the x-axis as 'x'
ylabel('y'); % label the y-axis as 'y'
title('graph xb'); % add a title to the plot