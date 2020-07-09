%% script_2

% %read in data
% data = csvread('data/leaf.cvs');
% %plot data
% l = patch(data(:,1), data(:,2), 'green');
% l.LineWidth = 2;

%% SOLUTION: Breakout 1 
% This section has the fixed code if you are struggling to debug!

% %read in data
% data = csvread('leaf.csv'); % correct filename
% %plot data
% l = patch(data(:,1), data(:,2), 'green');
% l.LineWidth = 2;

%% SOLUTION: Breakout 2

%read in data
data = csvread('leaf.csv');
%plot data
l = patch(data(:,1), data(:,2), [145,207,96]/255); % divide by 255 to normalize value between 0 and 1
l.LineWidth = 1; % change to 1
