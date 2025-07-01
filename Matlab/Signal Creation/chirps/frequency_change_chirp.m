minfreq = 0;    %minimum frequency
maxfreq = 3000; %maximum frequency
fs = 2.5 * maxfreq; %sample frequency multiplied more than twice for nyquist 
starttime= 0;   %start time of chirp 
endtime = 0.5;  %ending time of chirp 

% Time vector from 0 to 0.5 seconds with sampling rate fs
t = starttime:1/fs:endtime;

% Generate a chirp signal starting at 20 Hz and ending at 8000 Hz
y = chirp(t, minfreq, endtime, maxfreq);

plot(t,y)
% Create a table with time in the first column and amplitude in the second column
data_table = table(t', y');