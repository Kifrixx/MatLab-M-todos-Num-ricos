function dibujo(a, b, w, yexacta)
    tam = length(w);
    x = linspace(a, b, tam);
    x2 = 0:0.1:2;
    plot(x, w,"blue", x2, feval(yexacta, x2),"--")
    legend("w(x)","y(x)")
    title("Gráfica comparativa")
end