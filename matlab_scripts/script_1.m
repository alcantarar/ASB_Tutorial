%% script_1
%
%   This script produces the main body of the peach.
%

%read in data
data = csvread('data/peach.csv');
%plot data
p = patch(data(:,1), data(:,2), [0.506, 0.0, 0.937]); % per reviewer comments
p.LineWidth = 2;

%% SOLUTION: Breakout 1

%read in data
% data = csvread('data/peach.csv');
%plot data
% p = patch(data(:,1), data(:,2), [0.506, 0.0, 0.937]); % per reviewer comments
% p.LineWidth = 2;