% Weighted On-Base Average (Basic) Calculator Function
function[statwOBA] = functionwOBA(playerID,hitsTotal,hitsDoubles,hitsTriples,homeRuns,baseOnBalls,hitByPitch,plateAppearances)
    statwOBA = zeros(length(playerID),1);
    for i = 1:length(playerID)
        statwOBA(i) = ((0.7*(baseOnBalls(i)+hitByPitch(i)))+(0.9*(hitsTotal(i)-(hitsDoubles(i)+hitsTriples(i)+homeRuns(i))))+(1.25*hitsDoubles(i))+(1.6*hitsTriples(i))+(2*homeRuns(i)))/plateAppearances(i);
    end
end