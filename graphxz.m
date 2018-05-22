function [A, B, u, v, f_c, l_c, al, bl, ttl] = graphxz (a, b, y, f, md, m, n, fld, t)
    
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
            kex = cos(m*pi*X./a)*sin(n*pi*y/b);
            kez = 0;
            u = kex .* sin(omega*t - (kl .* Z));
            v = kez .* sin(omega*t - (kl .* Z));
            ttl = 'E XZ TE Mode';
                
        else
            
            khx = sin(m*pi*X./a)*cos(n*pi/b*y); 
            khz = cos(m*pi*X./a)*cos(n*pi/b*y);
            u = khx .* sin(omega*t - (kl .* Z));
            v = khz .* cos(omega*t - (kl * Z));
            ttl = 'M XZ TE Mode';
                 
        end
        
    end

    if md == 1
        if fld == 0
            kex = cos(m*pi*X./a)*sin(n*pi/b*y);
            kez = sin(m*pi*X./a)*sin(n*pi/b*y);
            v = kez .*cos(omega*t - (kl .* Z));
            u = kex .*sin(omega*t - (kl .* Z));
            ttl = 'E XZ TM Mode';
       
        else
            khx = sin(m*pi*X./a)*cos(n*pi*y/b); 
            khz = 0;
            u = khx .*sin(omega*t - (kl .* Z));
            v = khz .*sin(omega*t - (kl .* Z));
            ttl = 'H XZ TM Mode';
          
        end
        
    end 
    
    f_c = fc(m, n, a, b);
    l_c = lambdac(m, n, a, b);
    
 end