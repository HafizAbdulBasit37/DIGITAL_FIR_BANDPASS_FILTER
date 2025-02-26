clc; clear; close all;

Fs = 100;   % Sampling frequency (Hz)
fc1 = 13;   % Lower cutoff frequency (Hz)
fc2 = 17;   % Upper cutoff frequency (Hz)
SNR = 10;   % Signal-to-noise ratio (dB)

% Generate time vector
t = 0:1/Fs:0.5;  % 0.5 seconds duration

% Generate clean signal (sum of two sinusoids)
clean_signal = sin(2*pi*fc1*t) + sin(2*pi*fc2*t);

% Generate noise
noise_power = 10^(-SNR/10);
noise = sqrt(noise_power) * randn(size(t));

% Add noise to the clean signal
noisy_signal = clean_signal + noise;

% Scale the signal to fit within the range of a 16-bit integer
scaled_signal = int16(noisy_signal * (2^15 - 1));

% Convert the scaled signal to binary representation
binary_signal = dec2bin(typecast(scaled_signal, 'uint16'), 16);

% Save each 16-bit binary value on a separate line in the text file
fileID = fopen('binary_signal.mem', 'w'); % Save as .mem for Verilog compatibility
for i = 1:size(binary_signal, 1)
    fprintf(fileID, '%s\n', binary_signal(i, :));
end
fclose(fileID);



% Plot the results
figure;
subplot(3,1,1);
plot(t, clean_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Clean Signal (13 Hz + 17 Hz)');

subplot(3,1,2);
plot(t, noise);
xlabel('Time (s)');
ylabel('Amplitude');
title('Noise');

subplot(3,1,3);
plot(t, noisy_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Noisy Signal');

% Display message
disp('Binary signal saved as binary_signal.mem for Verilog testing.');
