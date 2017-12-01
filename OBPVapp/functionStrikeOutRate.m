% Strike Out Rate Calculator Function
function[percentSO,percentSOi] = functionStrikeOutRate(playerID,plateAppearances,strikeOuts)
    percentSO = zeros(length(playerID),1);
    percentSOi = zeros(length(playerID),1);
    for i = 1:length(playerID)
        percentSO(i) = strikeOuts(i)/plateAppearances(i);
        percentSOi(i) = 1 - percentSO(i);
    end
end