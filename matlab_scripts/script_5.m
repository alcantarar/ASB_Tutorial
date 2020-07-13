%% script_5

%today's date
date_text = date;
year = date_text(end-4:end);
%plot text
text(2.5,-3.5, year, 'FontSize', 24, 'FontWeight', 'bold')