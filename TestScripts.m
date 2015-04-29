%{
%TotalEnergy function test
M = floor(rand(10).*10)

[E, Cmax, Cmin] = TotalEnergy(M);
%}

%{
%3-by-3 Test case
B = input('3by3 matrix' );

M = findInnerVal(B);
%}

%Series of test matrices
%B = floor(rand(10).*10)
%B = [5, 5, 5, 5, 5;4, 0, 0, 0, 4;3, 0, 0, 0, 3;2, 0, 0, 0, 2;1, 1, 1, 1, 1];
%B = [0, 1, 0; 1, 0, 1; 0, 1, 0];
%B = [6, 6, 6, 6, 6, 6;5, 0, 0, 0, 0, 5;4, 0, 0, 0, 0, 4;3, 0, 0, 0, 0,3;2, 0, 0, 0, 0, 2;1, 1, 1, 1, 1, 1];
B = floor(rand(20, 20).*10);

decimal_digits = 4;
delta = 1;

%Generate Tiling Harmonic values on rectangular grid
T = graphHarmInner(B, decimal_digits);
M = findAllInnerVals(round(T, 4), delta);


%Display graph of function values on tiling
%Enter output matrix from above
figure
subplot(1, 2, 1)
mesh(M)
title('Tiling Harmonic')
subplot(1, 2, 2)
mesh(T)
title('Graph Harmonic')