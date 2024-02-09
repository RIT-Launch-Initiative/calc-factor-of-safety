clc; clear; close all;

Thickness = [0.1,0.15,0.2,0.25,0.3];

chamberFOS3s = [4.9,8.1,11.4,15,18.3];
throatFOS3s = [36.7,61.6,84,112.9,154];

chamberFOS6s = [4.4,6.9,9.6,13.1,16.5];
throatFOS6s = [30.9,57.3,82.2,99.8,131.1];

FOSPlot = figure('Name','FOS Plot');
hold on

subplot(2,1,1)
hold on
plot(Thickness, throatFOS3s,'-ob');
plot(Thickness, throatFOS6s,'-or');
lgd1 = legend('3$[s]$ Burn Time','6$[s]$ Burn Time');
lgd1.Location = "northwest";
grid on
xlabel('$L_{wall}$ $[in]$'); ylabel('F.O.S. $[-]$');
title('F.O.S. @ Throat vs. Wall Thickness');

subplot(2,1,2)
hold on
plot(Thickness, chamberFOS3s,'-ob');
plot(Thickness, chamberFOS6s,'-or');
lgd2 = legend('3$[s]$ Burn Time','6$[s]$ Burn Time');
lgd2.Location = "northwest";
grid on

xlabel('$L_{wall}$ $[in]$'); ylabel('F.O.S. $[-]$');
title('F.O.S. @ Chamber vs. Wall Thickness');

saveas(FOSPlot,'FOSPlot','png')