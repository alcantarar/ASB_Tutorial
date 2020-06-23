%% script_2

%read in data
data = csvread('data/leaf.cvs');
%plot data
l = patch(data(:,1), data(:,2), 'green');
l.LineWidth = 2;

%% This section has the fixed code if you are struggling to debug!

% %read in data
% data = csvread('leaf.csv'); % correct filename
% %plot data
% l = patch(data(:,1), data(:,2), 'green');
% l.LineWidth = 2;

