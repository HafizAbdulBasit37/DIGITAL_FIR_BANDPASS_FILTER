% Given sine wave samples
sine_samples = [127, 113, 78, 34, 0, -13, 0, 30, 64, 83, 78, 47, 0, -47, -78, -83, -63, -30, 0, 13, 0, -34, -78, -113, -127, -113, -78, -34, 0, 13, 0, -30, -63, -83, -78, -47, 0, 47, 78, 83, 64, 30, 0, -13, 0, 34, 78, 113];

% Create an x-axis (time or sample index)
n = 0:length(sine_samples)-1;  % Indexes for the samples

% Plot the sine wave
figure;
plot(n, sine_samples, 'o-', 'LineWidth', 2, 'MarkerSize', 6);
title('Sine Wave Samples');
xlabel('Sample Index');
ylabel('Amplitude');
grid on;

% Optional: Add axis limits for better visualization
xlim([0 length(sine_samples)-1]);
ylim([-130 130]);
