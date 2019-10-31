% Get user input for alpha and Te
alpha = input('Input desired alpha: ');
Te = input('Input desired time delay: ');

% Create impulse function vector
impulse = zeros(1, length(signal) - 1);
impulse(1,1) = 1;

% Compute impulse shifted impulse vector
impulse_shifted = shift(impulse, Te);

% Compute impulse response
IR = impulse + alpha * impulse_shifted;

% Compute signalplusecho using convention between IR and signal
signalplusecho = conv(signal, IR);
signalplusecho = signalplusecho/max(abs(signalplusecho));

% Write to audio file
audiowrite('speechwithecho.wav', signalplusecho, Fs);