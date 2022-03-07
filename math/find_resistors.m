close all

Vref = 0.8
Vo_min = 1.8
Vo_max = 3.3
Vs_min = 3.1
Vs_max = 0.2

% Linear system to solve

A = [Vref, Vref - Vs_max;
    Vref, Vref - Vs_min]
b = [Vo_max - Vref; Vo_min - Vref]

R = inv(A) * b


R1 = 47000
R2 = R1 / R(1)
R3 = R1 / R(2)

R1 = 47000
R2 = 17400
R3 = 91000

Vs = linspace(Vs_max,Vs_min,1000);
Vo = (1 + R1/R2) * Vref + R1/R3 * (Vref - Vs);

plot(Vs,Vo)
grid on
xlabel("Vset")
xlabel("Vout")

Vmax = Vo(1)
Vmin  = Vo(end)
Vnoload = (1 + R1/R2) * Vref
