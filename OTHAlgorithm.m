delta = input('Choose error delta, 0 < delta <= 1 ' );
decimal_digits = input('Enter number of decimal digits of delta: ');

%Generate Tiling Harmonic values on rectangular grid
%Saves both tiling harmonic and graph harmonic inner values
G = o_graphHarmInner(B, decimal_digits);
M_in = round(G*10^decimal_digits)/(10^decimal_digits)
T = o_findAllInnerVals(M_in, delta);

%Graph function values on tiling
%Output matrix defined above
figure
subplot(1, 2, 1)
ezmesh(T)
title('Tiling Harmonic')
subplot(1, 2, 2)
ezmesh(G)
title('Graph Harmonic')
