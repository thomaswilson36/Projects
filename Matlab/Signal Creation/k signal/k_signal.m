% Frequencies (Hz) and other parameters
frequencies = [20000, 24000, 28000, 32000, 36000, 40000, 44000];
duration = 0.5; % Duration in seconds
samplingRate = 1000; % Sampling rate of 1 kHz
time = 0:1/samplingRate:duration; % Time vector (502 points)

% Parent directory where files will be saved
parentDir = 'C:\Users\Thomas Wilson\Desktop\final year project\k signal';

% Loop through each frequency
for i = 1:length(frequencies)
    freq = frequencies(i);
    
    % Create a folder for the current frequency
    folderName = sprintf('%d Hz', freq);
    folderPath = fullfile(parentDir, folderName);
    
    if ~exist(folderPath, 'dir')
        mkdir(folderPath); % Create folder if it doesn't exist
    end
    
    % Generate the sinusoidal signal
    signal = sin(2*pi*freq*time);
    
    % Create a table of time and amplitude values
    signalTable = table(time', signal');
    signalTable.Properties.VariableNames = {'Time', 'Amplitude'};
    
    % Save the table as a CSV file
    csvFilePath = fullfile(folderPath, 'signal_data.csv');
    writetable(signalTable, csvFilePath);
    
    % Plot the sinusoidal signal
    figure;
    plot(time, signal);
    title(sprintf('Sinusoidal Signal at %d Hz', freq));
    xlabel('Time (seconds)');
    ylabel('Amplitude');
    
    % Save the plot as an image
    plotImagePath = fullfile(folderPath, 'signal_plot.png');
    saveas(gcf, plotImagePath);
    
    % Close the figure
    close;
end

