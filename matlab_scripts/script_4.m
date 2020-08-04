%% script_4
%
%   This script produces the ASB logo
%

%read in data
data = csvread('data/ASB.csv');
%plot data
plot(data(:,1), data(:,2), 'r-', 'LineWidth',7);

%% SOLUTION: Breakout 1

%read in data
% data = csvread('data/ASB.csv');
%plot data
% plot(data(:,1), data(:,2), 'r-', 'LineWidth',7); % change to red per reviewer comments
