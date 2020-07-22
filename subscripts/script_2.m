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
%l = patch(data(:,1), data(:,2), [0.5686 0.5882 0.3765]);
%l.LineWidth = 1; % change to 1
