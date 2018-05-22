function [A, B, v, f_c, l_c, al, bl, ttl] = xysurf (a, b, z, f, md, m, n, fld, t)

    kappa = 2 * pi * f * sqrt(11012650056e-18);
    x = linspace(0,a,25);
    y = linspace(0,b,25);
    [X,Y] = meshgrid(x,y);
    [A, B] = meshgrid(x,y);
    omega = 2 * pi * f;
    kl = sqrt((kappa^2) - ((m*pi/a)^2 + (n*pi/b)^2));    
    al = 'X';
    bl = 'Y';
   
    if md == 0
        if fld == 0
            kez = 0;
            v = kez .* sin(omega*t - (kl * X));
            ttl = 'E XY TE Mode';
            
        else
            
           khz = cos(m*pi*X/a).*cos(n*pi*Y./b);
           v = khz .* cos(omega*t - (kl * z));   
           ttl = 'H XY TE Mode';
        
        end
    end

    if md == 1
        if fld == 0
            kez = sin(m*pi*X/a).*sin(n*pi*Y./b);
            v = kez .*cos(omega*t - (kl * z));
            ttl = 'E XY TM Mode';
        
        else
            
            khz = 0;
            v = khz .*sin(omega*t - (kl * X));
            ttl = 'H XY TM Mode';
        
        end
    end
    
    f_c = fc(m, n, a, b);
    l_c = lambdac(m, n, a, b);

end