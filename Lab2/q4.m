% f_r(t) = f_s(t) + alpha * f_s(t - t_e)

% Retrieve inputs for alpha and Te
alpha = input('Input desired alpha: ');
Te = input('Input desired time delay: ');

% Shift signal using time delay
signal_shifted = shift(signal, Te);

% Compute signalplusecho
signalplusecho = signal + alpha * signal_shifted;
signalplusecho = signalplusecho/max(abs(signalplusecho));

% Write new signal to speechwithecho.wav
audiowrite('speechwithecho.wav', signalplusecho, Fs);
