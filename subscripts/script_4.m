%% script_4

%read in data
data = csvread('data/ASB.csv');
%plot data
plot(data(:,2), data(:,1), 'k-', 'LineWidth',7);

%% SOLUTION: Breakout 1

%read in data
%data = csvread('ASB.csv');
%plot data
%plot(data(:,1), data(:,2), 'k-', 'LineWidth',7); %switched axes

%% SOLUTION: Breakout 2

%read in data
%data = csvread('ASB.csv');
%plot data
%plot(data(:,1), data(:,2), 'r-', 'LineWidth',7); % change to red per reviewer comments
