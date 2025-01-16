% function int_step_square
% input: xi - current state vector
%        xi_dot - current state derivative vector
%        dt - integration step
% output: xi_p1 - next state vector


function xi_p1 = int_step_square(xi,xi_dot, dt)

xi_p1 = xi + xi_dot*dt;

end
