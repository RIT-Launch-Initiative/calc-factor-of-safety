clc; clear; close all;

% Temp_N = readtable('temperatures.csv');
% XYZ_N = readtable('nodes_z_pos.csv');
% 
% Temp_N = table2array(Temp_N);
% XYZ_N = table2array(XYZ_N);
% 
% i=1;
% len = length(Temp_N(:,1));
% while i <= len
%     if(Temp_N(i,1) ~= XYZ_N(i,1))
%         Temp_N(i,:) = [];
%         len = len - 1;
%     else
%         i = i + 1;
%     end
% end

P_x = readtable('Pressure_X.xlsx');
P_x = table2array(P_x);

X = P_x(:,1);
P = P_x(:,2);





% Temp_Z = readtable('sorted_values.xlsx');
% Temp_Z = table2array(Temp_Z);
% 
% save('ANSYS_Wall_Temp_Z.mat','Temp_Z')