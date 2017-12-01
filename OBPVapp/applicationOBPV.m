%% Overall Batting Performance Value (OBPV) Application
% Submitted by: Ryan Silberg
%% What does this app do?
%   1) Calculates sabermetrics
%   2) Calculates OBPV

%   Sabermetric values:
%       batting average, batting average of balls in play, slugging percentage, on-base percentage, on-base plus slugging, weighted on-base average, walk rate, and strikeout rate

%   OBPV is a number that represents a sum of all of these values (including strikeout rate inverse) to give an overall rating of batting performance
%       "OBPV_Interpretation,xlsx" is an excel file with a chart explaining OBPV

% This app produces:
%   1) A .csv file of calculated player sabermetrics including OBPV with player IDs
%   2) A bar graph representing OBPV
%   3) A radar (spider) plot representing OBPV
%% Directions for Use
%   1) DOWNLOAD THE OBPVapp FOLDER (this contains files including the OBPV application, various functions, the test 'playerStats.xlsx', and the OBPV interpretation chart)
%   2) CREATE AN EXCEL SPREADSHEET OF THE COUNTING BASEBALL STATISTICS
%       a) IN THE FIRST ROW, PUT EACH VARIABLE NAME IN A CELL FROM A1 TO A13 SPELLED EXACTLY AS FOLLOWS
%       playerName, playerID, plateAppearances, atBats, hitsTotal, hitsDoubles, hitsTriples, homeRuns, sacHits, sacFlies, baseOnBalls, hitByPitch, strikeOuts 
%       b) IN THE playerName COLUMN, LIST THE PLAYER BY THEIR LAST NAME
%       c) IN THE playerID COLUMN, CREATE A NUMERICAL ID FOR EACH PLAYER
%       d) COUNT THE FOLLOWING BASEBALL STATISTICS AND ENTER VALUES UNDER THE APPROPRIATE COLUMN NAME FOR EACH PLAYER
%           "plateAppearances" =  # OF PLATE APPEARANCES
%           "atBats" = # OF AT BATS
%           "hitsTotal" = # OF TOTAL HITS
%           "hitsDoubles" = # OF DOUBLES
%           "hitsTriples" = # OF TRIPLES
%           "homeRuns" = # OF HOME RUNS
%           "sacHits" = # OF SACRIFICE HITS
%           "sacFlies" = # OF SACRIFICE FLIES
%           "baseOnBalls" = # OF TIMES WALKED
%           "hitByPitch" = # OF TIMES HIT BY PITCH
%           "strikeOuts" = # OF STRIKEOUTS
%   3) SAVE THE FILE AS .xlsx
%   4) ADD .xlsx FILE TO THE "OBPVapp" FOLDER PATH (SAVE .xlsx FILE IN "OBPVapp" FOLDER)
%   5) OPEN MATLAB
%       i) OPEN OBPVapp FOLDER 
%   6) RUN THE APPLICATION
%   7) CHOOSE THE CORRECT EXCEL FILE
%   8) ENTER THE NUMBER OF PLAYERS IN YOUR FILE
%   9) ENTER FILE NAMES TO SAVE EACH OUTPUT FILE APPROPRIATELY
%   10) FIND THE CREATED FILES IN THE OBPVapp FOLDER AND OPEN TO VIEW RESULTS
%% Test Data
% 'playerStats.xlsx' is sample data based on the 2017 Houston Astros season batting statistics to test this app (Verify at https://www.baseball-reference.com/teams/HOU/2017.shtml)
%% Start New
clear all;
clc;
%% Choose Data File
[fileName,PathName] = uigetfile('*.xlsx','Select your Excel file');
%% Import Function
numOfPlayers = input('Enter the number of players: ');
endRow = numOfPlayers + 1;
[playerName,playerID,plateAppearances,atBats,hitsTotal,hitsDoubles,hitsTriples,homeRuns,sacHits,sacFlies,baseOnBalls,hitByPitch,strikeOuts] = functionImportStats(fileName,'Sheet1',2,endRow);
%% Batting Average Function
[statBA] = functionBA(playerID,atBats,hitsTotal);
%% Batting Average of Balls in Play Function
[statBABIP] = functionBABIP(playerID,hitsTotal,homeRuns,atBats,strikeOuts,sacFlies);
%% Slugging Percentage Function
[statSLG] = functionSLG(playerID,hitsTotal,hitsDoubles,hitsTriples,homeRuns,atBats);
%% On-Base Percentage Function
[statOBP] = functionOBP(playerID,hitsTotal,baseOnBalls,hitByPitch,atBats,sacFlies);
%% On-Base Plus Slugging Calculator
statOPS = zeros(length(playerID),1);
for i = 1:length(playerID)
    statOPS(i) = statSLG(i)+statOBP(i);
end
%% Weighted On-Base Average Function
[statwOBA] = functionwOBA(playerID,hitsTotal,hitsDoubles,hitsTriples,homeRuns,baseOnBalls,hitByPitch,plateAppearances);
%% Walk Rate Function
[percentBB] = functionWalkRate(playerID,plateAppearances,baseOnBalls);
%% Strike Out Rate (Inverse) Function
[percentSO,percentSOi] = functionStrikeOutRate(playerID,plateAppearances,strikeOuts);
%% Overall Batting Performance Value Function
[statOBPV] = functionOBPV(playerID,statBA,statBABIP,statOPS,statwOBA,percentBB,percentSOi);
%% Create Results Matrix
OBPV_results = [playerID,statBA,statBABIP,statSLG,statOBP,statOPS,statwOBA,percentBB,percentSO,statOBPV];
% Round All Values to Three Decimal Places
OBPV_results = round(OBPV_results,3);
%% Export Results (https://www.mathworks.com/matlabcentral/answers/259937-csvwrite-a-matrix-with-header)
% Export Results Matrix to CSV File
csvwrite('OBPV_results.csv', OBPV_results);
% Use Variable Names as Headers
variableNames = {'playerID' 'statBA' 'statBABIP' 'statSLG' 'statOBP' 'statOPS' 'statwOBA' 'percentBB' 'percentSO' 'statOBPV'};
% Insert Commas
variableNames = [variableNames;repmat({','},1,numel(variableNames))];
variableNames = variableNames(:)';
% Header in Text with Commas
variableNames = cell2mat(variableNames);
% Write Header to File    
fid = fopen('OBPV_results.csv','w'); 
fprintf(fid, '%s\n',variableNames);
fclose(fid);
% Write Data to End of File
dlmwrite('OBPV_results.csv', OBPV_results, '-append');
%% Create Matrix for Data Visualization
OBPV_resultsFig = [statBA,statBABIP,statOPS,statwOBA,percentBB,percentSOi];
%% Stacked Bar Graph of Results
%figure
bar(1:length(playerID), [statBA statBABIP statOPS statwOBA percentBB percentSOi], 0.5, 'stack')
% Adjust the Axis Limits
stackedHeight = 0;
if (max(statOBPV) < 3.25)
    stackedHeight = 3.25;
else
    stackedHeight = max(statOBPV) + .1;
end
axis([0 (length(playerID)+1) 0 stackedHeight])
set(gca, 'XTick', 1:length(playerID))
% Add Title and Axis Labels
title('Overall Batting Performance Values')
xlabel('Player ID')
ylabel('OBPV')
% Threshold Lines for Interpretation
Excellent = refline([0 3.13]);
Excellent.Color = [0 0 0];
Great = refline([0 2.9]);
Great.Color = [.125 .125 .125];
Above = refline([0 2.675]);
Above.Color = [.25 .25 .25];
Average = refline([0 2.470]);
Average.Color = [.5 .5 .5];
Below = refline ([0 2.355]);
Below.Color = [.75 .75 .75];
Poor = refline ([0 2.195]);
Poor.Color = [.875 .875 .875];
Awful = refline ([0 0]);
Awful.Color = [1 1 1];
Overall = refline([0 mean(statOBPV)]);
Overall.Color = [1 0 0];
% Add a legend
legend({'statBA','statBABIP','statOPS','statwOBA','percentBB','percentSOi','Excellent','Great','Above Average','Average','Below Average','Poor','Awful','GROUP AVERAGE'}, 'Location','eastoutside');
%% Spider (Radar) Plot of Results (https://www.mathworks.com/matlabcentral/fileexchange/59561-spider--radar--plot?focused=7556636&tab=function)
% Spider Plot Inputs
P_labels = ["statBA","statBABIP","statOPS","statwOBA","percentBB","percentSOi"];
axes_interval = 1;
axes_precision = 1;
% Figure Properties
figure('units', 'normalized', 'outerposition', [0 0.05 1 0.95]);
% Spider Plot Function
functionSpiderPlot(OBPV_resultsFig, P_labels, axes_interval, axes_precision,...
    'Marker', 'o',...
    'LineStyle', '-',...
    'LineWidth', 2,...
    'MarkerSize', 5);
% Title Properties
title('Overall Batting Performance Values',...
    'Fontweight', 'bold',...
    'FontSize', 12);
% Legend Properties
legend('show', 'Location', 'northeastoutside');
%% Save Figures
% Hide Figures (https://www.mathworks.com/matlabcentral/answers/9572-keep-figures-from-popping-up-when-running)
h1 = figure(1);set(gcf,'Visible', 'off');
h2 = figure(2);set(gcf,'Visible', 'off');
% Stat Sheet File
OBPV_resultsStats = '%s.csv';
csvFileName = input('Enter a file name for the stat sheet: ','s');
str = sprintf(OBPV_resultsStats,csvFileName);
movefile('OBPV_results.csv',str);
% Spider (Radar) Plot File
OBPV_resultsSpider = input('Enter a file name for the spider plot: ','s');
saveas(figure(2),OBPV_resultsSpider,'png')
close(figure(2));
% Stacked Bar Graph File
OBPV_resultsBar = input('Enter a file name for the bar graph: ','s');
saveas(figure(1),OBPV_resultsBar,'png')
close(figure(1));