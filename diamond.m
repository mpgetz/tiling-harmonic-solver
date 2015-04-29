function [M] = diamond(n)
%Generates diamond matrix of size nxn
%   Counts up from 1,1 position
    M_0 = zeros(n);
    M_0(1, :) = [1:n];
    M_0(:, 1) = [1:n]';
    M_0(n, :) = [n:-1:1];
    M_0(:, n) = [n:-1:1]';
    M = M_0;
end

