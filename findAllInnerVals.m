function M = findAllInnerVals(B, delta)
%B is MbyN matrix; boundary assumed to be the rectangle's outer edges
%delta is error delta; or: amount to increment/decrement by
  %Instantiate values
    [b1, b2] = size(B);
    Bup = B;
    Bdn = B;
    totalE0 = TotalEnergy(B);
    
  %Run search over each inner value, across columns
    for m = 1:(b1-2)
        for n = 1:(b2-2)
            Bup(m+1,n+1) = Bup(m+1,n+1)+delta;
            Bdn(m+1,n+1) = Bdn(m+1,n+1)-delta;
            if TotalEnergy(B) > TotalEnergy(Bup)
                while TotalEnergy(B) > TotalEnergy(Bup)
                    B = Bup;
                    Bup(m+1,n+1) = Bup(m+1,n+1)+delta;
                end
            elseif TotalEnergy(B) > TotalEnergy(Bdn)
                while TotalEnergy(B) > TotalEnergy(Bdn)
                    B = Bdn;
                    Bdn(m+1,n+1) = Bdn(m+1,n+1)-delta;
                end
            end
            Bup = B;
            Bdn = B;
            %disp(B)
            %disp(TotalEnergy(B))
            %input('')
        end
    end
    
  %Recursive call to self unless TotalEnergy is same
    totalE = TotalEnergy(B);
    if (totalE0 - totalE) > delta
        %disp('continue')
        M = findAllInnerVals(B, delta);
    else
        M = B;
    end
end
