% Overall Batting Performance Value Calculator Function
function[statOBPV] = functionOBPV(playerID,statBA,statBABIP,statOPS,statwOBA,percentBB,percentSOi)
    statOBPV = zeros(length(playerID),1);
    for i = 1:length(playerID)
        statOBPV(i) = statBA(i)+statBABIP(i)+statOPS(i)+statwOBA(i)+percentBB(i)+percentSOi(i);
    end
end