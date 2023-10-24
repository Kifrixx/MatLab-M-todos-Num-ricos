function lagrangea(x,y,xn)
n = length(x);
pol = [zeros(1,n)];
x(1)
L = ones(n,1); 
for  i=1:n
  
    for j=1:n %importante destacar que el for va hasta n(incluido)
        if i ~= j
            L(i) = L(i)*((xn-x(j))/(x(i)-x(j)))

        end
    end
end
pol = y'*L
end

