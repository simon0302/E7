function e = circuit(t, current, R, L)
e = R*current + L*MyDer(abs(t(1)-t(2)), current);