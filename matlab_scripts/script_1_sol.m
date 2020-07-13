 This script has the fixed code if you are struggling to debug!

%% SOLUTION: Breakout 1 

%read in data
data = csvread('peach.csv');
%plot data
p = patch(data(:,1), data(:,2), [0.8980 0.3176 0.1765]); % RGB values for orange
p.LineWidth = 2;

%% SOLUTION: Breakout 2

%read in data
data = csvread('peach.csv');
%plot data
p = patch(data(:,1), data(:,2), [0.9882 0.1961 0.3490]); % Change color
p.LineWidth = 1; % change to 1

%% SOLUTION: Breakout 3

%read in data
data = csvread('peach.csv');
%plot data
p = patch(data(:,1), data(:,2), [0.8980 0.3176 0.1765]);  % Change color back
p.LineWidth = 1;
