clear all; 

%symboic expresion for triange wave pulse to claculate its fourier transform
syms t;
f = triangularPulse(0.001,0.002,0.002,t);
F = fourier(f,t)

f = triangularPulse(-0.002,-0.001,-0.001,t)+rectangularPulse(-0.001,0.001,t)+triangularPulse(0.001,0.001,0.002,t);
F = fourier(f,t)

figure;
t = linspace(0,0.003,10000);
f = triangularPulse(0.001,0.002,0.002,t);
plot(t,f,'color','#0072BD','linewidth',1.1);

axis([0 0.003 -0.1 1.1]);
xlabel('time[s]');
ylabel('[arb]');

cleanfigure; % clean figure
matlab2tikz('Figures/Q1_1_1.tex'); % convert to tex

figure;
f = rectangularPulse(0.001,0.002,t)*1000;
hold on;
plot(t,f,'color','#0072BD','linewidth',1.1);
stem(0.002, -200,'marker','v','color','#0072BD','linewidth',1.1);


axis([0 0.003 -300 1100]);
xlabel('time[s]');
ylabel('[arb]');

hold off;
%figure;
%F = fourier(f,t)
%plot(triangularPulse(0.001,0.002,0.002,t),t);

cleanfigure; % clean figure
matlab2tikz('Figures/Q1_1_2.tex'); % convert to tex

figure;

syms t
f = triangularPulse(0.001,0.002,0.002,t);
F = fourier(f,t)

Hz = linspace(1,100000,10000);
x = subs(F, t, Hz);

plot(Hz,x);
axis([100 100000]);

cleanfigure;
matlab2tikz('Figures/Q1_1_3.tex');

