% Data from the image description
cycles = [10^3, 10^4, 10^5, 10^6, 10^7];
stress_cfrp = [1000, 850, 750, 650, 550];
stress_aluminum = [300, 220, 160, 130, 100];
stress_steel = [600, 500, 400];

% Create a new figure
figure('Position', [100, 100, 800, 600]);

% Plot the data
semilogx(cycles, stress_cfrp, '-o', 'LineWidth', 2, 'MarkerSize', 8);
hold on;
semilogx(cycles, stress_aluminum, '-s', 'LineWidth', 2, 'MarkerSize', 8);
semilogx(cycles(1:3), stress_steel, '-^', 'LineWidth', 2, 'MarkerSize', 8);
hold off;

% Customize the plot
xlabel('Cycles to Failure (N)', 'FontSize', 18, 'FontWeight', 'bold');
ylabel('Stress Amplitude (S) in MPa', 'FontSize', 18, 'FontWeight', 'bold');

legend({'Composite', 'Aluminum', 'Steel'}, 'Location', 'northeast', 'FontSize', 16, 'FontWeight', 'bold');
grid on;
set(gca, 'FontSize', 16, 'FontWeight', 'bold');

% Save the plot as an image file
saveas(gcf, 'stress_vs_cycles_poster.png');

% Display the plot
shg;
