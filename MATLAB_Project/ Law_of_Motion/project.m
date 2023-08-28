% Define parameters
mass1 = 1;                  % Mass of obj1 (1 kg)
mass2 = 5;                  % Mass of obj2 (5 kg)
force = 10;                 % Applied force (10 N)
simulation_time = 10;       % Total simulation time (10 seconds)
time_step = 0.1;            % Time step (0.1 seconds)

% Initialize variables
initial_velocity1 = 0;      % Initial velocity of obj1
initial_velocity2 = 0;      % Initial velocity of obj2
position1 = 0;              % Initial position of obj1
position2 = 0;              % Initial position of obj2
time_values = [];           % To store time values for plotting
position_values1 = [];      % To store position values of obj1 for plotting
position_values2 = [];      % To store position values of obj2 for plotting

for t = 0:time_step:simulation_time
    % Apply force throughout the simulation
    acceleration1 = force / mass1;
    acceleration2 = force / mass2;

    % Velocity update using v_new = v_old + a * dt
    initial_velocity1 = initial_velocity1 + acceleration1 * time_step;
    initial_velocity2 = initial_velocity2 + acceleration2 * time_step;

    % Position update using x_new = x_old + v * dt
    position1 = position1 + initial_velocity1 * time_step;
    position2 = position2 + initial_velocity2 * time_step;

    % Data storage for plotting
    time_values = [time_values,t];
    position_values1 = [position_values1, position1];
    position_values2 = [position_values2, position2];
end

plot(time_values, position_values1, 'r-', time_values, position_values2, 'b--');
title('Position vs. Time for Objects with Different Masses');
xlabel('Time (s)');
ylabel('Position (m)');
legend('1kg Ball', '5kg Ball');



