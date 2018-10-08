function output = studentLoan(P, r, n_t)
%part 3 of the lab2 for E7

output(1) = loanPayment(P,r,n_t,minPayment()+100);
output(2) = minPayment();
output(3) = timeToPay(100 + minPayment());
output(4) = timeToPay(2*minPayment());
output(5) = timeToPay(4*minPayment());

    function R = minPayment()
        % let n_t = 1, then:
        R = P*r;
    end


    function numberPayments = timeToPay(R)
        
        function y = amountFunc(time)
        y = (evalPoly(P, time, 1+r) - evalPoly(R,(0: 1: time-1), 1+r));
        end
        
        numberPayments = changeOfSign(@amountFunc);
        
    end

end    

function A = loanPayment(P, r, n_t, R)
A = (evalPoly(P, n_t, 1+r) - evalPoly(R,(0: 1: n_t-1), 1+r));    
end