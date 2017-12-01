% Batting Average Calculator Function
function[statBA] = functionBA(playerID,atBats,hitsTotal)
    statBA = zeros(length(playerID),1);
    for i = 1:length(playerID)
        statBA(i) = hitsTotal(i)/atBats(i);
    end
end