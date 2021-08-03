function bipolar_nrz(X)

% Bipolar  not return to zero line coding
% Arguments:
%           X - binary input vector
% Returns:
%          Bipolar NRZ line coding plot

n = 1;
L = length(X);
X(L+1) = 1;

while n <= length(X)-1
    t = n-1:0.001:n;
    if X(n) == 0
        if X(n+1) == 0
            y = -(t < n) - (t == n);
        else
            y = -(t < n) + (t == n);
        end
        plot(t, y, 'LineWidth', 2.5)
        title('Bipolar NRZ line coding')
        grid on
        hold on
        axis([0 length(X)-1 -1.5 1.5]);
    else
        if X(n+1) == 0
            y = (t < n)-1*(t == n);
        else
            y = (t < n)+1*(t == n);
        end
        plot(t, y, 'LineWidth', 2.5)
        title('Bipolar NRZ line coding')
        grid on
        hold on
        axis([0 length(X)-1 -1.5 1.5]);
    end
    n = n+1;
end
end
