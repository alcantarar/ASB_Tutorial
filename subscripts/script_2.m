%% script_2

%read in data
data = csvread('data/leaf.cvs');
%plot data
l = patch(data(:,1), data(:,2), 'green');
l.LineWidth = 2;

%% SOLUTION: Breakout 1

%read in data
%data = csvread('leaf.csv'); % correct filename
%plot data
%l = patch(data(:,1), data(:,2), 'green');
%l.LineWidth = 2;

%% SOLUTION: Breakout 2

%read in data
%data = csvread('leaf.csv');
%plot data
%l = patch(data(:,1), data(:,2), [0.792, 0.647, 0.278]); % per reviewer comments
%l.LineWidth = 1;
