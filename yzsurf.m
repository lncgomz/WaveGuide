function [A, B, v, f_c, l_c, al, bl, ttl] = yzsurf (a, b, x, f, md, m, n, fld, t)

    kappa = 2 * pi * f * sqrt(11012650056e-18);
    y = linspace(0,b,25);
    z = linspace(0,a,25);
    [Z,Y] = meshgrid(z,y);
    [A, B] = meshgrid(z,y);
    omega = 2 * pi * f;
    kl = sqrt((kappa^2) - ((m*pi/a)^2 + (n*pi/b)^2));    
    al = 'Z';
    bl = 'Y';
   
   if md == 0
        if fld == 0
            kex = cos(m*pi*x/a)*sin(n*pi*Y/b);
            
            v = kex .* sin(omega*t - (kl .* Z));
            ttl = 'E XZ TE Mode';
                
        else
            
            khx = sin(m*pi*x/b)*cos(n*pi/b*Y); 
            v = khx .* sin(omega*t - (kl .* Z));
            ttl = 'M XZ TE Mode';
                 
        end
        
    end

    if md == 1
        if fld == 0
            kex = cos(m*pi*x/a)*sin(n*pi/b*Y);
            v = kex .*sin(omega*t - (kl .* Z));
            ttl = 'E XZ TM Mode';
       
        else
            khx = sin(m*pi*x/a)*cos(n*pi*Y/b); 
            v = khx .*sin(omega*t - (kl .* Z));
            ttl = 'H XZ TM Mode';
          
        end
        
    end 
    
    f_c = fc(m, n, a, b);
    l_c = lambdac(m, n, a, b);

end