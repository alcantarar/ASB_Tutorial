% Script to graph COVID19 cases and deaths for a specific state
% Data from The New York Times, based on reports from state and local health agencies.
% Data is downloaded on script run from https://github.com/nytimes/covid-19-data
% See interactive data at https://www.nytimes.com/interactive/2020/us/coronavirus-us-cases.html
% 2020 - Abhishektha Boppana

%% Get latest available data
webData = webread('https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv'); %reads in data as a char vector
covidCell = textscan(webData,'%{yyyy-MM-dd}D %s %f %f %f','HeaderLines',1,'Delimiter',','); %translate the char vector to a cell with the correct format per column 
covidStruct = cell2struct(covidCell,{'date','state','fips','cases','deaths'},2); %turn the cell of cells into a structure, labeling with column headers
covidData = struct2table(covidStruct); %turn struct into a table to make it easier to select data per state

%% Select a state to plot
stateToAnalyze = 'Colorado';
subsetData = covidData(strcmp(covidData.state,stateToAnalyze),:); %only get data for the selected state

%% Plot Data
figure;


subplot(2,1,1)
casePlot=plot(subsetData.date, subsetData.cases);
casePlot.Color = 'k';
casePlot.LineStyle='-';
casePlot.Marker='^';

ylim([0,400000]);
xlabel('xLabel')
ylabel('yLabel')
title('Cases');


subplot(2,1,2)
deathPlot = plot(subsetData.date, subsetData.deaths);
deathPlot.Color = 'k';
deathPlot.LineStyle='--';
deathPlot.Marker='^';

ylim([0,4000]);
xlabel('xLabel')
ylabel('yLabel')
title('Deaths');

sgtitle('State COVID19 Data');


