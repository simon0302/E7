function [t] = period(T, theta0, reltol, abstol)
% Period is the computed period for initial theta value theta0 (initial
% omega value is always 0).

% Simulation parameters:
tspan = [0 T];                         % Time interval of integration

% Initial condition:
z0 = [theta0;0]; 

% System ODE dz/dt = f(z,t):
f = @(t,z) [z(2);-sin(z(1))];   

% Tolerance and event for detecting period of oscillation:                                        
options = odeset('abstol', abstol, 'reltol', reltol,'event',@EventsFcn); 

% Numerically integrate the IVP:
[~,~,te,~,~] = ode45(f, tspan, z0, options);

t = te(2);
% period = te(idx(2));   % Pendulum starts at rest, so pick second position
end

function [position,isterminal,direction] = EventsFcn(t,z)
position = z(2); % The value that we want to be zero
isterminal = 1;  % Halt integration? 0 = false, 1 = true
direction = -1;  % Direction the zero can be approached: 0 = either,
                 %  +/-1 = event function is increasing/decreasng       
end