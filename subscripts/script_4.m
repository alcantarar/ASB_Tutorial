%% script_4

%read in data
data = csvread('data/ASB.csv');
%plot data
plot(data(:,2), data(:,1), 'k-', 'LineWidth',7);
