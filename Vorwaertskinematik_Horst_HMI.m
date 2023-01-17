% Initialization
clc; clear; close all;

%Adding the stl files to the path
p = genpath('Horst900_Attemp2\');
addpath(p);

%Starting the app for the foreward kinematics
run("App_Horst_Vorwaertskinematik.mlapp")

%opening the Simulinkfile if necessary
%open_system('Vorwaertskinematik_Horst.slx')
%opening the appdesigner if necessary
%appdesigner("C:\Users\Alexander\Documents\FH_Technikum\1_Semester\Roboterkinematik\Matlab\App_Horst_Vorwaertskinematik.mlapp") 

%For further projects the angles of the axis are transfered from the app to
%the workspace
theta1workspace=0;
theta2workspace=0;
theta3workspace=0;
theta4workspace=0;
theta5workspace=0;
theta6workspace=0;








