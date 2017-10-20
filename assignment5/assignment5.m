% Assignment 5: Functions and I/O
% Submitted by: Ryan Silberg

% Import data function
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv',2, 26);
% Convert categorical to double (changes F&M to 1&2)
Gender = double(Gender);
% genderIsoCalc function
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(SubjectID, Gender, Day1, Day2, Day3);
% dayComparator function
[day1toDay2,day2toDay3] = dayComparator(SubjectID, Day1, Day2, Day3);
% Initializes the variable for weight normalized day values with zeros column matrix
normDay1mean = zeros(length(Day1),1);
normDay2mean = zeros(length(Day2),1);
normDay3mean = zeros(length(Day3),1);
% Loop for weight normalizing day values
for i = 1:length(Weight)
    normDay1mean(i) = Day1(i)/Weight(i);
    normDay2mean(i) = Day2(i)/Weight(i);
    normDay3mean(i) = Day3(i)/Weight(i);
end
% Group average of weight normalized day values
normDay1mean = mean(normDay1mean);
normDay2mean = mean(normDay2mean);
normDay3mean = mean(normDay3mean);
% Determine length of the variable matrix with the maximum number of values
variableLengthMatrix = [length(maleIsoIndMeans),length(femaleIsoIndMeans),length(maleGroupIsoMean),length(femaleGroupIsoMean),length(day1toDay2),length(day2toDay3),length(normDay1mean),length(normDay2mean),length(normDay3mean)];
maxVariableLength = max(variableLengthMatrix);
% Make each variable matrix same length using zeros
maleIsoIndMeans = [maleIsoIndMeans; zeros(maxVariableLength-length(maleIsoIndMeans),1)];
femaleIsoIndMeans = [femaleIsoIndMeans; zeros(maxVariableLength-length(femaleIsoIndMeans),1)];
maleGroupIsoMean = [maleGroupIsoMean; zeros(maxVariableLength-length(maleGroupIsoMean),1)];
femaleGroupIsoMean = [femaleGroupIsoMean; zeros(maxVariableLength-length(femaleGroupIsoMean),1)];
day1toDay2 = [day1toDay2; zeros(maxVariableLength-length(day1toDay2),1)];
day2toDay3 = [day2toDay3; zeros(maxVariableLength-length(day2toDay3),1)];
normDay1mean = [normDay1mean; zeros(maxVariableLength-length(normDay1mean),1)];
normDay2mean = [normDay2mean; zeros(maxVariableLength-length(normDay2mean),1)];
normDay3mean = [normDay3mean; zeros(maxVariableLength-length(normDay3mean),1)];
% Create results matrix
iso_results = [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean];
% Export results matrix to csv file
csvwrite('iso_results.csv',iso_results);
% csvwrite a matrix with a header found at: https://www.mathworks.com/matlabcentral/answers/259937-csvwrite-a-matrix-with-header
variableNames = {'maleIsoIndMeans' 'femaleIsoIndMeans' 'maleGroupIsoMean' 'femaleGroupIsoMean' 'day1toDay2' 'day2toDay3' 'normDay1mean' 'normDay2mean' 'normDay3mean'}; % Header    
variableNames = [variableNames;repmat({','},1,numel(variableNames))]; % Insert commas
variableNames = variableNames(:)';
variableNames = cell2mat(variableNames); % Header in text with commas
% Write header to file    
fid = fopen('iso_results.csv','w'); 
fprintf(fid, '%s\n',variableNames);
fclose(fid);
% Write data to end of file
dlmwrite('iso_results.csv', iso_results, '-append');