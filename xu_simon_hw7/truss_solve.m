function T = truss_solve(W, theta)
%TRUSS_SOLVE - solves the linear system for the truss problem described in
%the problem statement
%   W - load in the problem, see diagram
%   theta - the angle of the beams IN DEGREES
%   T - calculated loads on beams and reaction forces for the system, same
%   units as load (see order below)

% Default output
% Note: the value corresponds to the index in the solution vector, use this
% to your advantage when programming it!
T_AB = 1;
T_BC = 2;
T_AC = 3;
A_X = 4;
A_Y = 5;
C_X = 6;

% Set up T (the order here matters! If you change the order, you will get 
% the problem wrong!)
T = [T_AB; T_BC; T_AC; A_X; A_Y; C_X];

%********************************** TODO **********************************
% Set up and solve the resulting linear system for T

matA = [sind(theta) 0 0 1 0 0;
        -cosd(theta) 0 -1 0 1 0;
        -sind(theta) -sind(30) 0 0 0 0;
        cosd(theta) -cosd(30) 0 0 0 0;
        0 sind(30) 0 0 0 1;
        0 cosd(30) 1 0 0 0];

T = matA\[0; 0; 0; W; 0; 0];