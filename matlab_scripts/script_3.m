%% script_3
%
%   This script produces the peach stem and halo
%

%read in data
data = csvread('data/outline.csv');
%remove missing data
data(data == -999) = NaN;
%plot data
hold on
plot(data(:,1), data(:,2), 'k-', 'LineWidth',10);
plot(data(:,3), data(:,4), 'k-', 'LineWidth',10);

%% SOLUTION: Breakout 1

%read in data
% data = csvread('data/outline.csv');
%remove missing data
% data(data == -999) = NaN;
%plot data
% hold on
% plot(data(:,1), data(:,2), 'k-', 'LineWidth',10); % change linewidth to 10 per reviewer comments
% plot(data(:,3), data(:,4), 'k-', 'LineWidth',10); % change linewidth to 10 per reviewer comments
