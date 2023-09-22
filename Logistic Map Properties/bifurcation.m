% Bifurcation Diagram - Logistic Map
clc
clear all
% Parameters
numIterations = 200; % Number of iterations
r_values = linspace(2.8, 4.5, 1000); % Range of growth rate parameter
x0 = 0.5; % Initial condition

% Initialize vectors
x = zeros(numIterations, 1); % Vector to store population values

% Iterate over different values of r
for i = 1:length(r_values)
    r = r_values(i); % Current growth rate parameter
    x0=0.5;

    for j=1:100
        x0 =r*x0*(1-x0);
    end

    x(1) = x0; % Reset initial condition

    
    % Iterate logistic map equation
    for n = 1:numIterations-1
        x(n+1) = r * x(n) * (1 - x(n));
    end

    % Plotting
    plot(r_values(i) * ones(numIterations, 1), x, '.', 'Color', 'b', 'MarkerSize', 1);
    hold on;
end

xlabel('Growth Rate Parameter (r)');
ylabel('Population (x)');
title('Bifurcation Diagram - Logistic Map');
grid on;
