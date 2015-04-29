%Returns expected energy for 
delta = 0.001;
decimal_digits = 3;
trials = 20;

%n = input('Enter size of matrix to compute up to ');
n_i=10;
n_f=20;
M_energy = zeros(trials, n_f-n_i+1);

for i=n_i:n_f
    for j=1:trials
        B = rand(i);

        G = graphHarmInner(B, decimal_digits);
        T = findAllInnerVals(round(G, decimal_digits), delta);
        M_energy(j,i-n_i+1) = TotalEnergy(T);
    end
end

