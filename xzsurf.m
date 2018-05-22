function [A, B, v, f_c, l_c, al, bl, ttl] = xzsurf (a, b, y, f, md, m, n, fld, t)
    
    kappa = 2 * pi * f * sqrt(11012650056e-18);
    x = linspace(0,a,25);
    z = linspace(0,b,25);
    [X,Z] = meshgrid(x,z);
    [A,B] = meshgrid(x,z);
    omega = 2 * pi * f;
    kl = sqrt((kappa^2) - ((m*pi/a)^2 + (n*pi/b)^2));
    al = 'X';
    bl = 'Z';
    
    if md == 0
        if fld == 0
            key = sin(m*pi*X/b)*cos(n*pi*y/a);
            v = key .* sin(omega*t - (kl .* Z));
            ttl = 'E YZ TE Mode';
            
        else
            
           khy = cos(m*pi*X/a)*sin(n*pi*y/b);
           v = khy .* sin(omega*t - (kl .* Z));
           ttl = 'H YZ TE Mode';
        
        end
    end

    if md == 1
        if fld == 0
            key = sin(m*pi*X/a)*cos(n*pi*y/b);
            v = key .*sin(omega*t - (kl .* Z));
            ttl = 'E YZ TM Mode';
        
        else
            
            khy = cos(m*pi*X/a).*sin(n*pi*y/b);
            v = khy .*sin(omega*t - (kl .* Z));
            ttl = 'H YZ TM Mode';
        
        end
    end
    
    f_c = fc(m, n, a, b);
    l_c = lambdac(m, n, a, b);
    
 end