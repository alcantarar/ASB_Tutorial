%% script_5

%today's date
date_text = date;
year = date_text(end-4:end);
%plot text
text(2.5,-3.5, year, 'FontSize', 32, 'FontWeight', 'bold')

%% SOLUTION: Breakout 1

%today's date
%date_text = date;
%year = date_text(end-3:end); %year is 2020, not -2020!
%plot text
%text(2.5,-3.5, year, 'FontSize', 24, 'FontWeight', 'bold')

%% SOLUTION: Breakout 2

%today's date
%year = date_text(end-3:end);
%plot text
%text(2.5,-3.5, ['Virtual ' year], 'FontSize', 24, 'FontWeight', 'bold') % Include 'Virtual ' before 2020
