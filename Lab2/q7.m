% Prompt user for input
alpha = input('Input desired alpha: ');
Te = input('Input desired time delay: ');
Ne = input('How many echoes: ');

% Compute a vector of alpha raised to the ith power
alpha_i = ones(1, Ne) .* alpha .^ (1:Ne);

s = signal; % Stand in variable 
fs = ones(Ne, length(signal));

% Shifting signal
for i = 1:Ne
  s = shift(s, Te);
  fs(i,:) = s;
endfor

% Compute signalplusecho
signalplusecho = (sum(alpha_i' .* fs, 1))';
signalplusecho = signalplusecho/max(abs(signalplusecho));

% Write to audio file speechwithecho.wav
audiowrite('speechwithecho.wav', signalplusecho, Fs);