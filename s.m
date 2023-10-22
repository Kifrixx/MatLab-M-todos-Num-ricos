%% MATLAB
function y = s(xi, xn, f)
    format long
    x1 = xi; 
    x2 = xn; 

    tol = (1/2)*(10^-5);
    x3 = 1;
    i = 0;
    while ( feval(f,x3 + tol)*feval(f,x3-tol) > 0 && feval(f, x3) ~= 0)
        x3 = (feval(f,x2)*x1-feval(f,x1)*x2)/(feval(f,x2)-feval(f,x1));

        if ( feval(f,x3)*feval(f,x2) < 0)
            x1 = x3;
        elseif ( feval(f,x1)*feval(f,x3) < 0)
            x2 = x3;
        end
        i = i +1;
    end
    x3
    i
end
