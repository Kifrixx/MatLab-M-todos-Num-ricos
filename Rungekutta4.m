function w = Rungekutta4(a,b, niter, alpha, f, yexacta)
    %f es la derivada e y es la condición inicial, además, yexacta es la
    %solución analítica de la ecuacion diferencial.
    bitdibujo = input("1 si quiere dibujar: \n");
    w = zeros( 1, niter+1);
    k = zeros( 1, 4);

    h = (b - a)/niter;
    x = a:h:b;
    w(1) = alpha;
    for i = 1:niter
        k(1) = h*feval(f, x(i), w(i) ); 
        k(2) = h*feval(f, x(i) + (h/2), w(i) + (k(1)/2));
        k(3) = h*feval(f, x(i) + (h/2),  w(i) + (k(2)/2));
        k(4) = h*feval(f, x(i) + h, w(i) + k(3));

        w(i+1) = w(i) + (1/6)*( k(1) + 2*k(2) + 2*k(3) + k(4));
    end
    %aquí abajo se llama al programa dibujo.m donde se dibujaran
    if bitdibujo == 1
        dibujo(a,b, w, yexacta)
    end 
end