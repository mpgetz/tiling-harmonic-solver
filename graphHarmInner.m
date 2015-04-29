function M = graphHarmInner(B, decimal_digits)
%computes the graph-harmonic values of inner vertices
    [m, n] = size(B);
    B_i = B;
    
    for i=1:m-2
        for j=1:n-2
            B(i+1,j+1) = mean([B(i,j+1),B(i+1,j),B(i+2,j+1), B(i+1,j+2)]);
        end
    end
    if ~isequal(round(B_i, decimal_digits), round(B, decimal_digits))
        %disp(B_i)
        %disp(B)
        M = graphHarmInner(B, decimal_digits);
    else
        M = B;
    end