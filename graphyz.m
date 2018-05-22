function [A, B, u, v, f_c, l_c, al, bl, ttl] = graphyz (a, b, x, f, md, m, n, fld, t)

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
            key = sin(m*pi*x/b)*cos(n*pi*Y/a);
            kez = 0;
            v = key .* sin(omega*t - (kl .* Z));
            u = kez .* sin(omega*t - (kl .* Z));
            ttl = 'E YZ TE Mode';
            
        else
            
           khy = cos(m*pi*x/a)*sin(n*pi*Y/b);
           khz = cos(m*pi*x/a)*cos(n*pi*Y/b);
           v = khy .* sin(omega*t - (kl .* Z));
           u = khz .* cos(omega*t - (kl .* Z));   
           ttl = 'H YZ TE Mode';
        
        end
    end

    if md == 1
        if fld == 0
            key = sin(m*pi*x/a)*cos(n*pi*Y/b);
            kez = sin(m*pi*x/a)*sin(n*pi*Y/b);
            u = kez .*cos(omega*t - (kl .* Z));
            v = key .*sin(omega*t - (kl .* Z));
            ttl = 'E YZ TM Mode';
        
        else
            
            khy = cos(m*pi*x/a).*sin(n*pi*Y/b);
            khz = 0;
            u = khy .*sin(omega*t - (kl .* Z));
            v = khz .*sin(omega*t - (kl .* Z));
            ttl = 'H YZ TM Mode';
        
        end
    end
    
    f_c = fc(m, n, a, b);
    l_c = lambdac(m, n, a, b);

end