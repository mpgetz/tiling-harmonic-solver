delta = input('Choose error delta, 0 < delta <= 1 ' );
decimal_digits = input('Enter number of decimal digits of delta: ');
trials = input('Enter number of trials to run: ');
size = input('Enter size of grid to compute over: ');

g_min = zeros(1, trials);
g_max = zeros(1, trials);
t_min = zeros(1, trials);
t_max = zeros(1, trials);
H_g = zeros(1, trials);
H_t = zeros(1, trials);

for i = 1:trials
%Generate Tiling Harmonic values on rectangular grid
%Saves both tiling harmonic and graph harmonic inner values
    disp('trial ', int2str(i));
    B = rand(size);
    G = graphHarmInner(B, decimal_digits);
    T = findAllInnerVals(round(G, decimal_digits), delta);
    g_min(i) = min(min(G(2:size-1, 2:size-1)));
    g_max(i) = max(max(G(2:size-1, 2:size-1)));
    H_g(i) = g_max(i)/g_min(i);
    t_min(i) = min(min(T(2:size-1, 2:size-1)));
    t_max(i) = max(max(T(2:size-1, 2:size-1)));
    if t_min(i) == 0
        H_t(i) = NaN;
    else
        H_t(i) = t_max(i)/t_min(i);
    end
end

disp('Graph Harmonic Constants:');
disp(H_g);
disp('Graph Tiling Harmonic Constants:');
disp(H_t);
