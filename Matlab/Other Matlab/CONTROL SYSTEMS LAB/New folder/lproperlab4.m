% Define the inductance and voltage input for the R-L circuit
L = 47e-6; % inductance in Henries
vin = 1;   % voltage input

% Calculate the transfer function (g1) of the R-L circuit using the resistor R and vector [L R] for coefficients
R = 47;    % resistance in ohms
g1 = tf(R , [L R]);

% Define the time vector for simulation using the linspace function
t = linspace (0, 10e-6, 1000);

% Generate a vector of ones to use as the voltage input for the R-L circuit
Vin = ones(size(t));

% Plot the Bode plot of the transfer function
margin(g1);

% Plot the zeros and poles of the transfer function
zero(g1)
pole(g1)

% Plot the step response of the R-L circuit using the step function
step(g1, t);

% Add a title, x-axis label, and y-axis label to the plot
title('Step response of R-L circuit' )
xlabel('Time (s)');
ylabel('Voltage (V)');

% Define the parameters for the R-L-C circuit
R2 = 230;           % resistance in ohms
L2 = 47e-6;         % inductance in Henries
C2 = 10e-9;         % capacitance in Farads
Vin = 1;            % voltage input

% Calculate the transfer function (g) of the R-L-C circuit using the coefficients of the R, L, and C elements
g = tf(1, [L2*C2 R2*C2 1]);

% Define the time vector for simulation using the linspace function
t1 = linspace(0, 20e-6, 1000);

% Generate a vector of ones to use as the voltage input for the R-L-C circuit
Vin = ones(size(t1));

% Plot the Bode plot of the transfer function
margin(g);

% Plot the zeros and poles of the transfer function
zero(g)
pole(g)

% Plot the step response of the R-L-C circuit using the step function
step(g, t1);

% Add a title, x-axis label, and y-axis label to the plot
title('Step response of R-L-C circuit')
xlabel('Time (s)');
ylabel('Voltage (V)');


