function M = graphHarmInnerLG(B, decimal_digits)
%Pre-define matrix B before calling THALgorithmLG
%computes the graph-harmonic values of inner vertices
    [m, n] = size(B);
    B_i = zeros(m, n);
    c = 0;
    
    while ~isequal(round(B_i, decimal_digits), round(B, decimal_digits))
        B_i = B;
        for i=1:m-2
            for j=1:n-2
                B(i+1,j+1) = mean([B(i,j+1),B(i+1,j),B(i+2,j+1), B(i+1,j+2)]);
            end
        end
        c = c+1;
        disp(strcat('G cycle #', num2str(c)))
    end
    M = B;
end