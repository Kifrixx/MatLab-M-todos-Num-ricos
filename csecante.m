function csecante(a,c,f)
      format long
      xi = a; %xn-1
      xn = c; %xn

      tol = (1/2)*(10^-5);
      xnn = 1; % se inicializa a uno para que cumpla la condición y pueda 
      %entrar
      i = 0;
      while ( feval(f,xnn + tol)*feval(f,xnn-tol) > 0 && feval(f, xnn) ~= 0)
           xnn = (feval(f,xn)*xi-feval(f,xi)*xn)/(feval(f,xn)-feval(f,xi));

           if ( feval(f,xnn)*feval(f,xn) < 0)
                
               xi = xnn;
            
           elseif ( feval(f,xi)*feval(f,xnn) < 0)
                
               xn = xnn;
           
           
           end
      i = i +1;
      end
      xnn %para mostrar el valor
      i


end