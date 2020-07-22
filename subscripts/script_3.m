%% script_3

%read in data
data = csvread('data/outline.csv');
%remove missing data 
data(data = -999) = NaN;
%plot data
hold on
plot(data(:,1), data(:,2), 'k-', 'LineWidth',3);
plot(data(:,3), data(:,4), 'k-', 'LineWidth',3);

%% SOLUTION: Breakout 1

%read in data
%data = csvread('outline.csv');
%remove missing data
%data(data == -999) = NaN; %correct use of "=="
%plot data
%hold on
%plot(data(:,1), data(:,2), 'k-', 'LineWidth',3);
%plot(data(:,3), data(:,4), 'k-', 'LineWidth',3);

%% SOLUTION: Breakout 2

%read in data
%data = csvread('outline.csv');
%remove missing data
%data(data == -999) = NaN;
%plot data
%hold on
%plot(data(:,1), data(:,2), 'k-', 'LineWidth',1); % change linewidth to 1
%plot(data(:,3), data(:,4), 'k-', 'LineWidth',1); % change linewidth to 1
