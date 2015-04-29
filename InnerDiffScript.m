decimal_digits = 3;
delta = 0.001;

S = zeros(1, 7);
M_max = zeros(1, 7);
i = 1;

for n=25:2:37
    B = rand(n);
    G = graphHarmInner(B, decimal_digits);
    T = findAllInnerVals(round(G, decimal_digits), delta);
    
    m = round(n/2)
    S(i) = sum(sum(T(m-5:m+5,m-5:m+5)-G(m-5:m+5,m-5:m+5)));
    M_max(i) = max(max(T(m-5:m+5,m-5:m+5)-G(m-5:m+5,m-5:m+5)));
    i = i+1;
end
