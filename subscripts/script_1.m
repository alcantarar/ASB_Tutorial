%% script_1

%read in data
data = csvread('data/peach.csv');
%plot data
p = patch(data(:,1), data(:,2), 'orange');
p.LineWidth = 2;
