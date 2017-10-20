% genderIsoCalc function
% Inputs are SubjectID, Gender, Day1, Day2, Day3 from data file
% Outputs are created variables: maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean
function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(SubjectID, Gender, Day1, Day2, Day3)
% Initializes maleIsoIndMeans and femaleIsoIndMeans variables with zeros column matrix
    maleIsoIndMeans = zeros(length(SubjectID),1);
    femaleIsoIndMeans = zeros(length(SubjectID),1);
% Loop for individual averages
    for i = 1:length(SubjectID)
% Determine geneder, calculate avererage day values for each subject, separate male and female data
        if (Gender(i) == 2)
            maleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3;
        elseif (Gender(i) == 1)
            femaleIsoIndMeans(i) = (Day1(i)+Day2(i)+Day3(i))/3;
        end
% Remove zero values
        maleIsoIndMeans(maleIsoIndMeans==0) = [];
        femaleIsoIndMeans(femaleIsoIndMeans==0) = [];
    end
% Transpose values to column matrix
    maleIsoIndMeans = maleIsoIndMeans';
    femaleIsoIndMeans = femaleIsoIndMeans';
% Calculate gender average of individual average day values
    maleGroupIsoMean = mean(maleIsoIndMeans);
    femaleGroupIsoMean = mean(femaleIsoIndMeans);
end