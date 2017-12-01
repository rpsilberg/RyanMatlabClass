% Batting Average of Balls In Play Calculator Function
function[statBABIP] = functionBABIP(playerID,hitsTotal,homeRuns,atBats,strikeOuts,sacFlies)
    statBABIP = zeros(length(playerID),1);
    for i = 1:length(playerID)
        statBABIP(i) = (hitsTotal(i)-homeRuns(i))/(atBats(i)-strikeOuts(i)-homeRuns(i)+sacFlies(i));
    end
end