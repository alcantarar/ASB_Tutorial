%% script_2

%read in data
data = csvread('data/leaf.cvs');
%plot data
l = patch(data(:,1), data(:,2), 'green');
l.LineWidth = 2;
