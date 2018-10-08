function dydt = odepractice(t,S)



dydt(1,1) = S(2);
dydt(2,1) = -3*S(1) - 2*S(2);

dydy = @dydt;