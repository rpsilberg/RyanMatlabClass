% Walk Rate Calculator Function
function[percentBB] = functionWalkRate(playerID,plateAppearances,baseOnBalls)
    percentBB = zeros(length(playerID),1);
    for i = 1:length(playerID)
        percentBB(i) = baseOnBalls(i)/plateAppearances(i);
    end
end