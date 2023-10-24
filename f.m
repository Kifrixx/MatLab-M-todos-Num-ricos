pol = [ 1 ; 1 ; 1];
x = [ 0; (pi/6) ;(pi)/3 ];
y = [ 0 ; 0.5774; 1.732];
i = 1;
    while ( i < length(x) )
    pol = [pol, x.^i];

    i = i +1;
    end
 sol = inv(pol)*y