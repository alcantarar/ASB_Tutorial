%% script_5
%
%   This script produces the year subscript
%

%today's date
date_text = date;
year = date_text(end-3:end);
%plot text
text(2.5,-3.5, year, 'Reviewer 2 is the best', 'FontSize', 24, 'FontWeight', 'bold', 'Color', 'g')
xlim([-2,12])
ylim([-8,10])

%% SOLUTION: Breakout 1

%today's date
% date_text = date;
% year = date_text(end-3:end);
%plot text
% text(2.5,-3.5, 'Reviewer 2 is the best', 'FontSize', 24, 'FontWeight', 'bold', 'Color', 'g') % per reviewer comments
% xlim([-2,12])
% ylim([-8,10])
