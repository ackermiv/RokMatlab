close all
clear

horst = importrobot('Horst900_Attemp2.urdf');
horst.DataFormat = 'column';

app.figureHorst=figure('Name','Horst 900','NumberTitle','off','Position',[764 200 600 425]);
hold on
show(horst);
%open_system('Aufbau_Horst.slx')
hold off 

simtime = 1;
x = 0.5*zeros(1,4)+0.25;
y = 0.25*[-1 -1 1 1];
z = 0.25*[-1 1 -1 1] + 0.75;
timevector = linspace(0,simtime,4);

hold on
plot3(x,y,z,'--r','LineWidth',2,'Parent',ax)
hold off

close
open_system('sm_ik_trajectory_model_horst.slx')
sim('sm_ik_trajectory_model_horst.slx')


figure('Visible','on');
tformIndex = 1;
for i = 1:10:numel(configs.Data)/6
    currConfig = configs.Data(:,1,i);
    show(horst,currConfig);
    drawnow

    xyz(tformIndex,:) = tform2trvec(getTransform(horst,currConfig,'link6'));
    tformIndex = tformIndex + 1;
end

figure('Visible','on')
show(horst,configs.Data(:,1,end));

hold on 
plot3(xyz(:,1)+0.07,xyz(:,2),xyz(:,3)+0.06,'-k','LineWidth',3);
plot3(x+0.07,y,z+0.06,'--r','LineWidth',3)
hold off
