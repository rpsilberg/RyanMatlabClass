% On-Base Percentage Calculator Function
function[statOBP] = functionOBP(playerID,hitsTotal,baseOnBalls,hitByPitch,atBats,sacFlies)
    statOBP = zeros(length(playerID),1);
    for i = 1:length(playerID)
        statOBP(i) = (hitsTotal(i)+baseOnBalls(i)+hitByPitch(i))/(atBats(i)+baseOnBalls(i)+hitByPitch(i)+sacFlies(i));
    end
end