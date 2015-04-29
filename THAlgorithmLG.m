delta = input('Choose error delta, 0 < delta <= 1 ' );
decimal_digits = input('Enter number of decimal digits of delta: ');

%Generate Tiling Harmonic values on rectangular grid
%Saves both tiling harmonic and graph harmonic inner values
G = graphHarmInnerLG(B, decimal_digits);
T = findAllInnerValsLG(round(G, decimal_digits), delta);

%Graph function values on tiling
%Output matrix defined above
figure
subplot(1, 2, 1)
mesh(T)
title('Tiling Harmonic')
subplot(1, 2, 2)
mesh(G)
title('Graph Harmonic')