% function FWD_Euler_Method
% Implementation of the simplest numerical integration - Forward Euler
% Method. 
% https://en.wikipedia.org/wiki/Explicit_and_implicit_methods
% x(i+1) = x(i) + dt * xdot(i)
% this function supports vectorial notation. 
% input: xi - current state vector
%        xi_dot - current state derivative vector
%        dt - integration step
% output: xi_p1 - next state vector


function xi_p1 = FWD_Euler_Method(xi,xi_dot, dt)

xi_p1 = xi + xi_dot*dt;

end
