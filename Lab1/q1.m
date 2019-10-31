% Define discrete values to be used
t = [-10:10];

% Initialize matrix to store DTS values
x = zeros(4,21);

% Computing values and storing within matrix
x(1,:) = unitstep(t) - 2*unitstep(t) - 2*unitstep(t-1) + unitstep(t-4);
x(2,:) = (t+2).*unitstep(t) - 2*unitstep(t) - t.*(t-4);
x(3,:) = unitpulse(t+1) - unitpulse(t) + unitstep(t+1) - unitstep(t-2);
x(4,:) = exp(0.8*t) .* unitstep(t+1) + unitstep(t);

%Displaying DTSs
figure;
stem(t,x(1,:));
title('Guy-Jacques Isombe 400137394, Olayiwola Bakare 400130008');
xlabel('n');
ylabel('x[n]');

figure;
stem(t,x(2,:));
title('Guy-Jacques Isombe 400137394, Olayiwola Bakare 400130008');
xlabel('n');
ylabel('x[n]');

figure;
stem(t,x(3,:));
title('Guy-Jacques Isombe 400137394, Olayiwola Bakare 400130008');
xlabel('n');
ylabel('x[n]');

figure;
stem(t,x(4,:));
title('Guy-Jacques Isombe 400137394, Olayiwola Bakare 400130008');
xlabel('n');
ylabel('x[n]');
