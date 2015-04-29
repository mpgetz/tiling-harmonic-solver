function E = TotalEnergy(M)
    %M is an MbyN matrix, E a scalar
    [m, n] = size(M);
    Cmax = zeros(m-1,n);
    Cmin = zeros(m-1,n);
    Sqmax = zeros(m-1,n-1);
    Sqmin = zeros(m-1,n-1);
    for i=1:(m-1)
        Cmax(i,:)= max(M(i:i+1,:),[],1);
        Cmin(i,:) = min(M(i:i+1,:),[],1);
    end
    for j=1:(n-1)
        Sqmax(:,j)= max(Cmax(:,j:j+1),[],2);
        Sqmin(:,j) = min(Cmin(:,j:j+1),[],2);
    end
    E = sum(sum((Sqmax-Sqmin).^2));
end