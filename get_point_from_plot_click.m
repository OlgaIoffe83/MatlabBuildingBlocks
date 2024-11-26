% get_point_from_plot_click
% this is an exmple script to get the point on the plot from user mouse click. 
% uses the following matlab abilities: ButtonDownFcn, pause, assignin


% define the function to put the data in base workspcae
function displayCoordinates(~,e,~)
assignin('base','xyp',e.IntersectionPoint(1:2));
end

% initialize
clear
clc
close all

% simulate data
t=0:.01:5; y=sin(t); 

% plot the data
figure
ax = axes;
hPlot=plot(t,y,"ButtonDownFcn",@(src,event)displayCoordinates(src,event,ax));
title('Click on point and press enter')
pause % waiting for the user to click on the plot and then hit enter

hold on
plot(xyp(1), xyp(2),'r*') % plot the aquired point

% find the index of the closest point to the position clicked by user
dist_yyp = sqrt((y-xyp(2)).^2);
[~,ind] = min(dist_yyp);

