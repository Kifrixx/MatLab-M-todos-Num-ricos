pol = [1 1 -1 2]

%polyval para poder obtener el valor en un valor determiando polyval(pol,x)
%roots para las raíces y poly para crear un polinomio a partir de sus
%raíces
%para poder sumar se requieren las mismas dimensiones para ello hay que
%poner una serie de zeros, se podría hace rlo siguiente para aumentar en
%tres la dimensión. Lo primero del zeros son el número de filas, lo segundo
%el número de columnas.
%para derivar polinomios se usa polyder(pol) y para integrar se usa polyint
%polyfit hace la aproximación mínimo cuadrática
pol = [zeros(1,3), pol]
%%
% $x^3+ x^2 - x + 2$ 
