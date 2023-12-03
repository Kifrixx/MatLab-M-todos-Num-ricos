function w = PCadams(a, b , niter, alpha, f, yexacta)
    w = Rungekutta4(a, b, niter, alpha, f, yexacta);
    h = (b -a)/niter;
    x = a:h:b;
    
    %cálculo de los valores de f=y' para predictor
    for j = 4:niter
            %cálculo predicción 
            w( j + 1) = w ( j ) + ( h / 24)*(55*feval(f,x( j ),w( j )) ...
            -59*feval(f, x( j - 1), w( j -1)) +37*feval(f, x(j-2),w(j-2))...
            -9*feval(f, x( j -3), w( j - 3)) );
    
            %corrección, primero se cambian la f y se machaca el valor último
            w( j + 1) = w ( j ) + ( h / 24)*(9*feval(f, x(j+1), w(j+1))...
            +19*feval(f, x(j), w(j)) -5*feval(f,x(j-1), w(j-1)) +feval(f,x(j-2), w(j-2)));
    
    end
    dibujo( a, b, w, yexacta);
end