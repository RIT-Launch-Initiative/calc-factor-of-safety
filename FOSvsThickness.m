clc; clear; close all;

Thickness = [0.1,0.15,0.2,0.25,0.3];

chamberFOS3s = [4.9,9.9,11.4,15,18.3];
throatFOS3s = [36.7,50.4,84,112.9,154];

chamberFOS6s = [4.4,9,9.6,13.1,16.5];
throatFOS6s = [30.9,34.1,82.2,99.8,131.1];

FOSPlot = figure('Name','FOS Plot');
hold on
plot(Thickness, throatFOS3s,'-b');
plot(Thickness, chamberFOS3s,'-b');
plot(Thickness, throatFOS6s,'-r');
plot(Thickness, chamberFOS6s,'-r');

lgd = legend('Throat 3[s]','Chamber 3[s]','Throat 6[s]','Chamber 6[s]');
lgd.Location = "northwest";
grid on; grid minor;

xlabel('T_w [in]'); ylabel('FOS [-]');
title('FOS @ Chamber & Throat for Wall Thickness');

saveas(FOSPlot,'FOSPlot','png')