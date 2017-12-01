% Slugging Percentage Calculator Function
function[statSLG] = functionSLG(playerID,hitsTotal,hitsDoubles,hitsTriples,homeRuns,atBats)
    statSLG = zeros(length(playerID),1);
    for i = 1:length(playerID)
        statSLG(i) = ((hitsTotal(i)-(hitsDoubles(i)+hitsTriples(i)+homeRuns(i)))+(2*hitsDoubles(i))+(3*hitsTriples(i))+(4*homeRuns(i)))/atBats(i);
    end
end