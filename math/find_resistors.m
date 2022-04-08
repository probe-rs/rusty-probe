close all

Vref = 0.8
Vo_min = 1.4
Vo_max = 3.5
Vs_min = 3.3
Vs_max = 0.0

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
R3 = 47000 + 17400 + 5100 % 2000 comes from the PWM to analog

Vs = linspace(Vs_max,Vs_min,1000);
Vo = (1 + R1/R2) * Vref + R1/R3 * (Vref - Vs);

plot(Vs,Vo)
grid on
xlabel("Vset")
ylabel("Vout")
xlim([0, 3.3])

Vmax = Vo(1)
Vmin  = Vo(end)
Vnoload = (1 + R1/R2) * Vref
