clear all, close all; clc
% Sample,X(ms) [24.10.0049 10:10:51 348 UTC],CurrentSetpoint[°C],ScaledInput[°C],OutputHeat[%],OutputCool[%]
input = xlsread('HeatingPID.csv');
newinput = input(:,3:4);    % vstup , vystup
%% 
newinput(:,2) = newinput(:,2)-min(newinput(:,2));
newinput = newinput(95:end,:);
newinput = newinput(1:260,:);
plot(newinput);
%% 
systemIdentification

%%
pidtool

