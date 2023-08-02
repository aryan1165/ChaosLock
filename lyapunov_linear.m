% Logistic map parameters
r = 4; % Parameter r
nIterations = 1000; % Number of iterations

% Initialize variables
x = zeros(1, nIterations);
x(1) = 0.5; % Initial condition

% Compute the time series
for i = 2:nIterations
    x(i) = r * x(i-1) * (1 - x(i-1));
end

% Compute the Jacobian matrix
J = zeros(nIterations-1, 1);
for i = 1:(nIterations-1)
    J(i) = r - 2*r*x(i);
end

% Compute singular value decomposition
[U, S, V] = svd(J);

% The largest Lyapunov exponent is given by the logarithm of the largest singular value
lambda = log(S(1, 1))/r;

% Display the estimated Lyapunov exponent
disp(['Estimated Lyapunov exponent: ', num2str(lambda)]);
