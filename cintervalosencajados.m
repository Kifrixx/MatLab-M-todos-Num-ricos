%% MATLAB
function cintervalosencajados(b,c,f)
    x1 = b;
    x2 = c;
    

    i = 0;
    xn = 1;%se incializa en un valor en la que la función no sea 0
    
    tol = (1/2)*(10^-5);
    while ( feval(f,xn) ~= 0 && feval(f,xn+tol)*feval(f,xn-tol) > 0)

        xn = (x1*feval(f,x2)-x2*feval(f,x1))/(feval(f,x2)-feval(f,x1));
        
        if ( feval(f,xn)*feval(f,x2) < 0)
        
            x1 = xn;
        
            elseif ( feval(f,x1)*feval(f,xn) < 0)
            x2 = xn;
        
        end
        i = i+1;
        format long
       
    end
    xn
    i
   
end
