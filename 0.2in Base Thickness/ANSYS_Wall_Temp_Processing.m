clc; clear; close all;

clc; clear;

Temp_XYZ_tbl = readtable('temp.csv');
Node_Boundary_Inner_tbl = readtable('interior_nodes.csv');
Node_Boundary_Exterior_tbl = readtable('exterior_nodes.csv');

Temp_XYZ = table2array(Temp_XYZ_tbl);
Node_Boundary_Inner = table2array(Node_Boundary_Inner_tbl);
Node_Boundary_Exterior = table2array(Node_Boundary_Exterior_tbl);

i=1;
len = length(Temp_XYZ(:,1));
Temp_XYZ_Interior = Temp_XYZ;
while i <= len
    if(Temp_XYZ_Interior(i,1) ~= Node_Boundary_Inner(i,1))
        Temp_XYZ_Interior(i,:) = [];
        len = len - 1;
    else
        i = i + 1;
    end
end
i=1;
len = length(Temp_XYZ(:,1));
Temp_XYZ_Exterior = Temp_XYZ;
while i <= len
    if(Temp_XYZ_Exterior(i,1) ~= Node_Boundary_Exterior(i,1))
        Temp_XYZ_Exterior(i,:) = [];
        len = len - 1;
    else
        i = i + 1;
    end
end


% P_x = readtable('Pressure_X.xlsx');
% P_x = table2array(P_x);
% 
% X = P_x(:,1);
% P = P_x(:,2);





% Temp_Z = readtable('sorted_values.xlsx');
% Temp_Z = table2array(Temp_Z);
% 
% save('ANSYS_Wall_Temp_Z.mat','Temp_Z')