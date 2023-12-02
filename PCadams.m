function PCadams(a, b , niter, alpha, f, yexacta)
    pasos = 3;
    w = Rungekutta4(a, b, pasos, alpha, f, yexacta)
    tam = length (w);
    w = [w, zeros(1, niter)];
    h = (b -a)/pasos;
    x = a:h:b;

    x = [x, zeros(1, niter)];
    %cálculo de los valores de f=y' para predictor
    for i = 1:pasos+1
              fi( i ) = feval( f, x( i ), w ( i ));
    end
    for j = 1:niter
            %cálculo predicción 
            predic = w ( tam ) + ( h / 24)*(55*fi(pasos+1) ...
            -59*fi(pasos) +37*fi(pasos-1)-9*fi(pasos-2));
    
            %corrección, primero se cambian la f y se machaca el valor último
            fi = circshift(fi, [0, -1]);
            x(tam) = x( tam ) + h; 
            fi(pasos+1) = feval( f, x(tam)+h, predic);

            w(tam+1) = w ( tam) + ( h / 24)*(9*fi(pasos+1) ...
            +19*fi(pasos) -5*fi(pasos-1)+fi(pasos-2));
            tam = tam + 1; 
    
    
    end
    dibujo( a, b, w, yexacta);
end