minfreq = 0;    % Minimum frequency in Hz
maxfreq = 3000; % Maximum frequency in Hz
fs = 2.5 * maxfreq; % Sample frequency, more than twice the maximum frequency to satisfy Nyquist criterion
starttime = 0;  % Start time of the chirp signal
endtime = 0.5;  % End time of the chirp signal (0.5 seconds)

% Time vector from 0 to 0.5 seconds with a step size of 1/fs
t = starttime:1/fs:endtime;

% Generate a chirp signal starting at minfreq Hz and ending at maxfreq Hz over the time interval [starttime, endtime]
y = chirp(t, minfreq, endtime, maxfreq);

% Define the desired amplitude scaling factor (e.g., scaling by 2)
amplitude = 1;

% Scale the chirp signal to the desired amplitude
y = amplitude * y;

% Plot the chirp signal over time
figure; % Open a new figure window
plot(t, y);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Chirp Signal with Scaled Amplitude');

% Create a table with time in the first column and amplitude in the second column
data_table = table(t', y');
