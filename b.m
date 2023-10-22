function b(a,b,f)
    format long
    x1 = a;
    x2 = b;
    
    
    xn = (x2+x1)/2;
    i = 0;
    sol = zeros(i,1);
        error = x2-x1;
        tol = ((1/2)*(10^-5)); %el diferente de cero es por si en los
                               %extremos se cancela(hay solución) o en el
                               %medio de los intervalos feval(f,xn)
        while ( error > tol && feval(f,x1)~=0 && feval(f,x2) ~= 0 && feval(f,xn)~= 0)
            
            if ( feval(f, xn)*feval(f,x2) < 0)

                x1 = xn;
      
                elseif ( feval(f,x1)*feval(f,xn) < 0)
                x2 = xn;
                
            end
        sol(i+1) = xn;
        i = i +1;
        error = (x2-x1)/(2^i);
        xn = (x2+x1)/2;
        end
        %si la solución está en los intervalos que la muestre
    if ( feval(f,x2) == 0)
        x2
        elseif ( feval( f,x1) == 0)
        x1
        else
    sol'
    length(sol)
    end

end