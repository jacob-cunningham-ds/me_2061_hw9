clc
close all
clear all
rng('default')
set(0,'defaulttextinterpreter','latex')
load CYLINDER.mat

%% ------------- Animating the u velocity ------------
C1 = linspace(-.2,1.2,20);
C2 = linspace(-5,5,20);
nt = size(Ux,2);

for i=1:1:250
     surf(X,Y,reshape(Ux(:,i),ny,nx)); colorbar; shading interp; view([0 0 1]); axis equal;
    colormap(jet)
    axis tight
    title('Ux Velocity')
    drawnow
end
