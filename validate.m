function [ ok ] = validate( n)
valido = isnumeric(n);
if valido == 0 
    ok = 0;
else
    ok = 1;
end