function bpuntofijo (a, f,d)
        xi = a;

        error = (1/2)*(10^-5);
        xn = a - (feval(f,a)/feval(d,a));

        xi = xn;

        i = 1; % Es la primera iteración
        while ( feval(f,xn+error)*feval(f,xn-error) > 0 && feval(f,xn)~= 0)
            
            xn = xi- feval(f,xi)/feval(d,xi);

            xi = xn;
            
            i = i + 1;
        end
        xn
        i-1 %se le resta uno porque la última que no entra al while no se
            %debe considerar como iteración
end
    