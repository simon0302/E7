function [t,theta,dtheta] = RK4(f, z0, T, reltol, abstol)
           
options = odeset('abstol', abstol, 'reltol', reltol); 

% Numerically integrate the IVP:
[t,z] = ode45(f, [0 T], z0, options);

% Outputs:
theta = z(:,1);
dtheta = z(:,2);
end