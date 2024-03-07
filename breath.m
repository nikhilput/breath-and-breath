% Load audio recording
filename = 'recording.wav'; % Change to your audio file path
[y, Fs] = audioread(filename);

% Step 1: Calculate the sampling rate
fprintf('Sampling Rate: %d Hz\n', Fs);

% Step 2: Plot frequency spectrum
N = length(y);
Y = fft(y);
frequencies = linspace(0, Fs, N);
amplitude_spectrum = abs(Y);

% Plot signal spectrum
plot(frequencies(1:N/2), amplitude_spectrum(1:N/2));
title('Audio Spectrum');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
xlim([0, Fs/2]);

% Step 3: Find frequency range
[max_amplitude, max_index] = max(amplitude_spectrum);
max_frequency = frequencies(max_index);
fprintf('Max Frequency: %d Hz\n', max_frequency);
