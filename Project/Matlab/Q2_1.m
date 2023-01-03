a = tf([1000],[0.1 1000]);



figure;
step(a)

figure;

bode(a);

figure;
%grid on;

w = logspace(2,6,1000); % create frequency vector
[a, b, c] = bode(a, w); % calculate bode plot

figure; % create new figure
set(gcf, 'Position', [105 100 650 200]); % set figure size
semilogx(w, squeeze(b)); % plot magnitude

xlabel('Frequency (rad/s)'); % set x label
ylabel('Phase (deg)'); % set y label

cleanfigure; % clean figure
matlab2tikz('Figures/Q2_1.tex'); % convert to tex

figure; % create new figure
set(gcf, 'Position', [100 100 650 200]); % set figure size
semilogx(w, mag2db(squeeze(a))); % plot magnitude

title('Bode Diagram'); % set title
ylabel('Magnitude (dB)'); % set y label

cleanfigure; % clean figure
matlab2tikz('Figures/Q2_2.tex'); % convert to tex