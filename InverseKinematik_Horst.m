close all
clear

horst = importrobot('Horst900_urdf.urdf');
horst.DataFormat = 'column';

ax = show(horst);
%open_system('Aufbau_Horst.slx')

