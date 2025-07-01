vin = 1;
R = 47;
L= 47e-6;
tfRL = tf([R], [L R]);
t = linspace (0, 10e-6, 1000);
Vin = ones(size(t));
Vout = step(tfRL, t);
plot(t, Vout);
title('Step response of R-L circuit');
xlabel ('Time(s)');
ylabel('Voltage(V)');
% The stability of this program allows a steady state value of 1
% Since R and L are both positive values, the pole has a negative real part.
%%
figure;
f = 50000;
t = 5* (linspace(0, 1/f, 1000));
Vin = 5*(square (2*pi*f*t) >= 0);
lsim(tfRL, Vin, t);
title('Response of R-L circuit to 50 kHz square wave');
xlabel ('Time (s)');
ylabel('Voltage(V)');
% the response of the R-L circuit reaches a steady-state value after some time
%%Therefore, the R-L circuit remains stable in response to a square wave input


%%The code includes two different input signals, 
% a step function and a square wave. The step function is a constant input, 
% while the square wave is a periodic signal that alternates between two values. 
% The code compares the response of the R-L circuit to both input signals, 
% which allows you to see how the circuit behaves under different conditions.

%%Settling time:
%%The settling time is the time it takes for the output signal to reach and stay within a certain range of the steady-state value after a step input. 
% In the first part of the code, a step input is used to obtain the step response of the R-L circuit. 
% From the plot, you can observe that the output signal reaches a steady state value of 1 and settles to within 5% of this value in approximately 5 microseconds.

%%Time period of input signal:
%%The time period of the input signal is the time it takes for the signal to complete one cycle. In the second part of the code, 
% a 50 kHz square wave input signal is used. The time period of this signal is 1/50 kHz, 
% or 20 microseconds. In the third part of the code, a 500 kHz square wave input signal is used. The time period of this signal is 1/500 kHz, or 2 microseconds. 
% By changing the frequency of the square wave input signal, you can observe how the circuit responds to signals with different time periods.

figure;
fHZ = 500000;
t = 5* (linspace(0, 1/fHZ, 1000));
Vin = 5* (square (2*pi*fHZ*t) >= 0);
lsim(tfRL, Vin, t);
title('Response of R- circuit to 500 kHz square wave');
xlabel('Time (s)');
ylabel('Voltage (V)');