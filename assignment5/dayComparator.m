% dayComparator function
% Inputs are SubjectID, Day1, Day2, Day3 from data file
% Outputs are created variables: day1toDay2 and day2toDay3
function [day1toDay2,day2toDay3] = dayComparator(SubjectID, Day1, Day2, Day3)
% Initializes day1toDay2 and day2toDay3 variables with zeros column matrix
    day1toDay2 = zeros(length(SubjectID),1);
    day2toDay3 = zeros(length(SubjectID),1);
% Loop for comparing day values from Day1 to Day2 and Day2 to Day3
    for i = 1:length(SubjectID)
% Lists SubjectID of subjects whose isometric strenth increased from Day1 to Day2
        if (Day1(i) < Day2(i))
            day1toDay2(i) = SubjectID(i);
        end
% Lists SubjectID of subjects whose isometric strenth increased from Day2 to Day3
        if (Day2(i) < Day3(i))
            day2toDay3(i) = SubjectID(i);
        end
% Remove zero values
        day1toDay2(day1toDay2==0) = [];
        day2toDay3(day2toDay3==0) = [];
    end
% Transpose values to column matrix
    day1toDay2 = day1toDay2';
    day2toDay3 = day2toDay3';
end