function [p, pf] = propagate(f, m, n, a, b)
pf = ((1/(2*pi*sqrt(11.12650056e-18))) *  sqrt((m*pi/a)^2 + (n*pi/b)^2));
if f > pf
    p = 1; 
else
    p = 0;
end
end
