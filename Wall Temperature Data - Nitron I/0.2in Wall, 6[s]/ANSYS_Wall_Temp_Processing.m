clc; clear; close all; tic;

Temp_XYZ_tbl = readtable('temp.csv');
Node_Boundary_Inner_tbl = readtable('interior_nodes.csv');
Node_Boundary_Exterior_tbl = readtable('exterior_nodes.csv');

Temp_XYZ = table2array(Temp_XYZ_tbl);
Node_Boundary_Inner = table2array(Node_Boundary_Inner_tbl);
Node_Boundary_Exterior = table2array(Node_Boundary_Exterior_tbl);

%% INTERIOR TEMPERATURE
Temp_XYZ_Interior = Temp_XYZ;

max_in = max(Node_Boundary_Inner);
Temp_XYZ_Interior(max_in+1:end,:) = [];

j=1;
len = length(Temp_XYZ(:,1));
while j < len
    if(Temp_XYZ_Interior(j,1) ~= Node_Boundary_Inner(j,1))
        Temp_XYZ_Interior(j,:) = [];
        len = length(Temp_XYZ_Interior(:,1));
    else
        j = j + 1;
    end
end

%% EXTERIOR TEMPERATURE
Temp_XYZ_Exterior = Temp_XYZ;
max_out = max(Node_Boundary_Exterior);
Temp_XYZ_Exterior(max_out+1:end,:) = [];

i=1;
len = length(Temp_XYZ(:,1));
while i < len
    if(Temp_XYZ_Exterior(i,1) ~= Node_Boundary_Exterior(i,1))
        Temp_XYZ_Exterior(i,:) = [];
        len = length(Temp_XYZ_Exterior(:,1));
    else
        i = i + 1;
    end
end

%% DELETE NODE CALLOUTS
Temp_XYZ_Interior(:,1) = [];
Temp_XYZ_Exterior(:,1) = [];

Temp_XYZ_Interior(:,1) = round(Temp_XYZ_Interior(:,1),4);
Temp_XYZ_Exterior(:,1) = round(Temp_XYZ_Exterior(:,1),4);

[~,uidx_int] = unique(Temp_XYZ_Interior(:,1),'stable');
Temp_XYZ_Interior = Temp_XYZ_Interior(uidx_int,:);

[~,uidx_ext] = unique(Temp_XYZ_Exterior(:,1),'stable');
Temp_XYZ_Exterior = Temp_XYZ_Exterior(uidx_ext,:);

Temp_XYZ_Interior = unique(Temp_XYZ_Interior,'rows');
Temp_XYZ_Exterior = unique(Temp_XYZ_Exterior,'rows');

save("0,2in,6s,int.mat",'Temp_XYZ_Interior');
save("0,2in,6s,ext.mat",'Temp_XYZ_Exterior');

toc