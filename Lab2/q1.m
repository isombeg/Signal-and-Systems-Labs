x = [0 0 1 1 1 0 0 0; 0 0 2 1 0 0 0 0; 0 0 2 1 0 0 0 0];
v = [0 0 1 1 1 1 0 0; 0 0 1 1 1 1 0 0; 0 0 0 1 2 0 0 0];

% Convolution of all 3 systems
a = [conv(x(1, :), v(1, :)); conv(x(2, :), v(2, :)); conv(x(3, :), v(3, :))]; 