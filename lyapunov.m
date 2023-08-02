% Logistic map parameters
rRange = 2.8:0.01:4; % Range of parameter values
nIterations = 1000; % Number of iterations

% Initialize Lyapunov exponent vector
lambdaValues = zeros(size(rRange));

% Iterate over different values of r
for rIndex = 1:length(rRange)
    r = rRange(rIndex);
    
    % Initialize variables
    x = zeros(nIterations, 1);
    x(1) = 0.5; % Initial condition
    
    % Compute the time series
    for i = 2:nIterations
        x(i) = r * x(i-1) * (1 - x(i-1));
    end
    
    % Initialize Lyapunov sum
    lyapSum = 0;
    
    % Iterate over the trajectory and compute the Lyapunov sum
    for i = 2:nIterations
        % Compute the derivative of the map
        deriv = r - 2 * r * x(i);
        
        % Update the Lyapunov sum
        lyapSum = lyapSum + log(abs(deriv));
    end
    
    % Compute the Lyapunov exponent
    lambdaValues(rIndex) = lyapSum / (nIterations - 1);
end

% Plot Lyapunov exponent versus parameter value
figure;
plot(rRange, lambdaValues, 'b', 'LineWidth', 1.5);
hold on;
plot(rRange, zeros(size(rRange)), 'r--', 'LineWidth', 1.5);
hold off;
xlabel('r');
ylabel('Lyapunov Exponent');
title('Lyapunov Exponent for Logistic Map');
legend('Lyapunov Exponent', 'y = 0', 'Location', 'SouthEast');
