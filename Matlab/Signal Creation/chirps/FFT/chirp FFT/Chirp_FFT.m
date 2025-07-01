% Parameters
Fs = 120000;                 % Sampling frequency (Hz)
T = 0.01;                    % Duration of the chirp (seconds)
f0 = 18000;                   % Initial frequency of the chirp (Hz)
f1 = 42000;                  % Final frequency of the chirp (Hz)
t = 0:1/Fs:T-1/Fs;           % Time vector

% Generate the chirp signal (linear frequency sweep from f0 to f1)
signal = chirp(t, f0, T, f1, 'linear');

% Compute the FFT of the signal
n = length(signal);          % Number of points in FFT
f = (0:n-1)*(Fs/n);          % Frequency vector
Y = fft(signal);             % FFT of the signal
Y_magnitude = abs(Y);        % Magnitude of FFT
Y_phase = angle(Y);          % Phase of FFT (in radians)

% Plot the time-domain signal
subplot(2, 1, 1);
plot(t, signal);
title('Time-Domain Chirp Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot the frequency-domain representation (FFT)
subplot(2, 1, 2);
plot(f(1:floor(n/2)), Y_magnitude(1:floor(n/2)), 'Marker', 'none');
title('Frequency-Domain (FFT)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Create a three-column table with frequency, magnitude, and phase angle data
freq_table = table(f(1:floor(n/2))', Y_magnitude(1:floor(n/2))', Y_phase(1:floor(n/2))', ...
    'VariableNames', {'Frequency (Hz)', 'Magnitude', 'Phase (radians)'});

% Display the table
disp(freq_table);
