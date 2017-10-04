% Submitted by: Ryan Silberg
% Due date: September 26, 2017
% Assignment 3 Tic Tac Toe

% X=-1
% O=0
% 1=10, 2=20, 3=30, 4=40, 5=50, 6=60, 7=70, 8=80, 9=90
% Failure to chose an available space results in loss of turn
ticTacToe = [10,40,70;20,50,80;30,60,90] % Displays Game Board
% Randomize Computer Move (Ensures availability of move)
computerChoices1 = find(ticTacToe>=1)
computer_move1 = computerChoices1(randperm(length(computerChoices1),1))
% FIRST MOVE: Computer
if (computer_move1 == 1)
    ticTacToe(1,1) = 0
elseif (computer_move1 == 2)
    ticTacToe(2,1) = 0
elseif (computer_move1 == 3)
    ticTacToe(3,1) = 0
elseif (computer_move1 == 4)
    ticTacToe(1,2) = 0
elseif (computer_move1 == 5)
    ticTacToe(2,2) = 0
elseif (computer_move1 == 6)
    ticTacToe(3,2) = 0
elseif (computer_move1 == 7)
    ticTacToe(1,3) = 0
elseif (computer_move1 == 8)
    ticTacToe(2,3) = 0
elseif (computer_move1 == 9)
    ticTacToe(3,3) = 0
end
% SECOND MOVE: Player 1 (Includes check for move availability)
player_move1 = input('Player 1 Move 1 (1 through 9): ','s')
if (player_move1 == '1')
    if (ticTacToe(1,1) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,1) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,1) == 10)
        ticTacToe(1,1) = -1
    end
elseif (player_move1 == '2')
    if (ticTacToe(2,1) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,1) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,1) == 20)
        ticTacToe(2,1) = -1
    end
elseif (player_move1 == '3')
    if (ticTacToe(3,1) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,1) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,1) == 30)
        ticTacToe(3,1) = -1
    end
elseif (player_move1 == '4')
    if (ticTacToe(1,2) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,2) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,2) == 40)
        ticTacToe(1,2) = -1
    end
elseif (player_move1 == '5')
    if (ticTacToe(2,2) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,2) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,2) == 50)
        ticTacToe(2,2) = -1
    end
elseif (player_move1 == '6')
    if (ticTacToe(3,2) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,2) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,2) == 60)
        ticTacToe(3,2) = -1
    end
elseif (player_move1 == '7')
    if (ticTacToe(1,3) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,3) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,3) == 70)
        ticTacToe(1,3) = -1
    end
elseif (player_move1 == '8')
    if (ticTacToe(2,3) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,3) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,3) == 80)
        ticTacToe(2,3) = -1
    end
elseif (player_move1 == '9')
    if (ticTacToe(3,3) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,3) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,3) == 90)
        ticTacToe(3,3) = -1
    end
else
    disp('Invalid Move, Lose Turn')
end
% Randomize Computer Move (Ensures availability of move)
computerChoices2 = find(ticTacToe>=1)
computer_move2 = computerChoices2(randperm(length(computerChoices2),1))
% THIRD MOVE: Computer
if (computer_move2 == 1)
    ticTacToe(1,1) = 0
elseif (computer_move2 == 2)
    ticTacToe(2,1) = 0
elseif (computer_move2 == 3)
    ticTacToe(3,1) = 0
elseif (computer_move2 == 4)
    ticTacToe(1,2) = 0
elseif (computer_move2 == 5)
    ticTacToe(2,2) = 0
elseif (computer_move2 == 6)
    ticTacToe(3,2) = 0
elseif (computer_move2 == 7)
    ticTacToe(1,3) = 0
elseif (computer_move2 == 8)
    ticTacToe(2,3) = 0
elseif (computer_move2 == 9)
    ticTacToe(3,3) = 0
end
% FOURTH MOVE: Player 1 (Includes check for move availability)
player_move2 = input('Player 1 Move 2 (1 through 9): ','s')
if (player_move2 == '1')
    if (ticTacToe(1,1) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,1) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,1) == 10)
        ticTacToe(1,1) = -1
    end
elseif (player_move2 == '2')
    if (ticTacToe(2,1) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,1) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,1) == 20)
        ticTacToe(2,1) = -1
    end
elseif (player_move2 == '3')
    if (ticTacToe(3,1) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,1) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,1) == 30)
        ticTacToe(3,1) = -1
    end
elseif (player_move2 == '4')
    if (ticTacToe(1,2) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,2) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,2) == 40)
        ticTacToe(1,2) = -1
    end
elseif (player_move2 == '5')
    if (ticTacToe(2,2) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,2) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,2) == 50)
        ticTacToe(2,2) = -1
    end
elseif (player_move2 == '6')
    if (ticTacToe(3,2) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,2) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,2) == 60)
        ticTacToe(3,2) = -1
    end
elseif (player_move2 == '7')
    if (ticTacToe(1,3) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,3) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(1,3) == 70)
        ticTacToe(1,3) = -1
    end
elseif (player_move2 == '8')
    if (ticTacToe(2,3) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,3) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(2,3) == 80)
        ticTacToe(2,3) = -1
    end
elseif (player_move2 == '9')
    if (ticTacToe(3,3) == -1)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,3) == 0)
        disp('Invalid Move, Lose Turn')
    elseif (ticTacToe(3,3) == 90)
        ticTacToe(3,3) = -1
    end
else
    disp('Invalid Move, Lose Turn')
end
% Randomize Computer Move (Ensures availability of move)
    computerChoices3 = find(ticTacToe>=1)
    computer_move3 = computerChoices3(randperm(length(computerChoices3),1))
% FIFTH MOVE: Computer
if (computer_move3 == 1)
    ticTacToe(1,1) = 0
elseif (computer_move3 == 2)
    ticTacToe(2,1) = 0
elseif (computer_move3 == 3)
    ticTacToe(3,1) = 0
elseif (computer_move3 == 4)
    ticTacToe(1,2) = 0
elseif (computer_move3 == 5)
    ticTacToe(2,2) = 0
elseif (computer_move3 == 6)
    ticTacToe(3,2) = 0
elseif (computer_move3 == 7)
    ticTacToe(1,3) = 0
elseif (computer_move3 == 8)
    ticTacToe(2,3) = 0
elseif (computer_move3 == 9)
    ticTacToe(3,3) = 0
end
% CHECK FOR COMPUTER WINNER
% Row Winner
if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == 0)
    disp('COMPUTER WINS!')
elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == 0)
    disp('COMPUTER WINS!')
elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == 0)
    disp('COMPUTER WINS!')
% Column Winner
elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == 0)
    disp('COMPUTER WINS!')
elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == 0)
    disp('COMPUTER WINS!')
elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == 0)
    disp('COMPUTER WINS!')
% Diagonal Winner
elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == 0)
    disp('COMPUTER WINS!')
elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == 0)
    disp('COMPUTER WINS!')
else
% SIXTH MOVE: Player 1 (Includes check for move availability)
    player_move3 = input('Player 1 Move 3 (1 through 9): ','s')
    if (player_move3 == '1')
        if (ticTacToe(1,1) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(1,1) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(1,1) == 10)
            ticTacToe(1,1) = -1
        end
    elseif (player_move3 == '2')
        if (ticTacToe(2,1) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(2,1) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(2,1) == 20)
            ticTacToe(2,1) = -1
        end
    elseif (player_move3 == '3')
        if (ticTacToe(3,1) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(3,1) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(3,1) == 30)
            ticTacToe(3,1) = -1
        end
    elseif (player_move3 == '4')
        if (ticTacToe(1,2) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(1,2) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(1,2) == 40)
            ticTacToe(1,2) = -1
        end
    elseif (player_move3 == '5')
        if (ticTacToe(2,2) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(2,2) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(2,2) == 50)
            ticTacToe(2,2) = -1
        end
    elseif (player_move3 == '6')
        if (ticTacToe(3,2) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(3,2) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(3,2) == 60)
            ticTacToe(3,2) = -1
        end
    elseif (player_move3 == '7')
        if (ticTacToe(1,3) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(1,3) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(1,3) == 70)
            ticTacToe(1,3) = -1
        end
    elseif (player_move3 == '8')
        if (ticTacToe(2,3) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(2,3) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(2,3) == 80)
            ticTacToe(2,3) = -1
        end
    elseif (player_move3 == '9')
        if (ticTacToe(3,3) == -1)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(3,3) == 0)
            disp('Invalid Move, Lose Turn')
        elseif (ticTacToe(3,3) == 90)
            ticTacToe(3,3) = -1
        end
    else
        disp('Invalid Move, Lose Turn')
    end
% CHECK FOR PLAYER 1 WINNER
% Row Winner
    if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == -3)
        disp('PLAYER 1 WINS!')
    elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == -3)
        disp('PLAYER 1 WINS!')
    elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == -3)
        disp('PLAYER 1 WINS!')
% Column Winner
    elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == -3)
        disp('PLAYER 1 WINS!')
    elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == -3)
        disp('PLAYER 1 WINS!')
    elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == -3)
        disp('PLAYER 1 WINS!')
% Diagonal Winner
    elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == -3)
        disp('PLAYER 1 WINS!')
    elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == -3)
        disp('PLAYER 1 WINS!')
    else
% Randomize Computer Move (Ensures availability of move)
        computerChoices4 = find(ticTacToe>=1)
        computer_move4 = computerChoices4(randperm(length(computerChoices4),1))
% SEVENTH MOVE: Computer
        if (computer_move4 == 1)
            ticTacToe(1,1) = 0
        elseif (computer_move4 == 2)
            ticTacToe(2,1) = 0
        elseif (computer_move4 == 3)
            ticTacToe(3,1) = 0
        elseif (computer_move4 == 4)
            ticTacToe(1,2) = 0
        elseif (computer_move4 == 5)
            ticTacToe(2,2) = 0
        elseif (computer_move4 == 6)
            ticTacToe(3,2) = 0
        elseif (computer_move4 == 7)
            ticTacToe(1,3) = 0
        elseif (computer_move4 == 8)
            ticTacToe(2,3) = 0
        elseif (computer_move4 == 9)
            ticTacToe(3,3) = 0
        end
% CHECK FOR COMPUTER WINNER
% Row Winner
        if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == 0)
            disp('COMPUTER WINS!')
        elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == 0)
            disp('COMPUTER WINS!')
        elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == 0)
            disp('COMPUTER WINS!')
% Column Winner
        elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == 0)
            disp('COMPUTER WINS!')
        elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == 0)
            disp('COMPUTER WINS!')
        elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == 0)
            disp('COMPUTER WINS!')
% Diagonal Winner
        elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == 0)
            disp('COMPUTER WINS!')
        elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == 0)
            disp('COMPUTER WINS!')
        else
% EIGTH MOVE: Player 1 (Includes check for move availability)
            player_move4 = input('Player 1 Move 4 (1 through 9): ','s')   
            if (player_move4 == '1')
                if (ticTacToe(1,1) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(1,1) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(1,1) == 10)
                    ticTacToe(1,1) = -1
                end
            elseif (player_move4 == '2')
                if (ticTacToe(2,1) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(2,1) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(2,1) == 20)
                    ticTacToe(2,1) = -1
                end
            elseif (player_move4 == '3')
                if (ticTacToe(3,1) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(3,1) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(3,1) == 30)
                    ticTacToe(3,1) = -1
                end
            elseif (player_move4 == '4')
                if (ticTacToe(1,2) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(1,2) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(1,2) == 40)
                    ticTacToe(1,2) = -1
                end
            elseif (player_move4 == '5')
                if (ticTacToe(2,2) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(2,2) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(2,2) == 50)
                    ticTacToe(2,2) = -1
                end
            elseif (player_move4 == '6')
                if (ticTacToe(3,2) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(3,2) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(3,2) == 60)
                    ticTacToe(3,2) = -1
                end
            elseif (player_move4 == '7')
                if (ticTacToe(1,3) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(1,3) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(1,3) == 70)
                    ticTacToe(1,3) = -1
                end
            elseif (player_move4 == '8')
                if (ticTacToe(2,3) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(2,3) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(2,3) == 80)
                    ticTacToe(2,3) = -1
                end
            elseif (player_move4 == '9')
                if (ticTacToe(3,3) == -1)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(3,3) == 0)
                    disp('Invalid Move, Lose Turn')
                elseif (ticTacToe(3,3) == 90)
                    ticTacToe(3,3) = -1
                end
            else
                disp('Invalid Move, Lose Turn')
            end
% CHECK FOR PLAYER 1 WINNER
% Row Winner
            if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == -3)
                disp('PLAYER 1 WINS!')
            elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == -3)
                disp('PLAYER 1 WINS!')
            elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == -3)
                disp('PLAYER 1 WINS!')
% Column Winner
            elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == -3)
                disp('PLAYER 1 WINS!')
            elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == -3)
                disp('PLAYER 1 WINS!')
            elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == -3)
                disp('PLAYER 1 WINS!')
% Diagonal Winner
            elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == -3)
                disp('PLAYER 1 WINS!')
            elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == -3)
                disp('PLAYER 1 WINS!')
            else
% Randomize Computer Move (Ensures availability of move)
            computerChoices5 = find(ticTacToe>=1)
            computer_move5 = computerChoices5(randperm(length(computerChoices5),1))  
% NINTH MOVE: Computer
                if (computer_move5 == 1)
                    ticTacToe(1,1) = 0
                elseif (computer_move5 == 2)
                    ticTacToe(2,1) = 0
                elseif (computer_move5 == 3)
                    ticTacToe(3,1) = 0
                elseif (computer_move5 == 4)
                    ticTacToe(1,2) = 0
                elseif (computer_move5 == 5)
                    ticTacToe(2,2) = 0
                elseif (computer_move5 == 6)
                    ticTacToe(3,2) = 0
                elseif (computer_move5 == 7)
                    ticTacToe(1,3) = 0
                elseif (computer_move5 == 8)
                    ticTacToe(2,3) = 0
                elseif (computer_move5 == 9)
                    ticTacToe(3,3) = 0
                end
% CHECK FOR COMPUTER WINNER
% Row Winner
                if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == 0)
                    disp('COMPUTER WINS!')
                elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == 0)
                    disp('COMPUTER WINS!')
                elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == 0)
                    disp('COMPUTER WINS!')
% Column Winner
                elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == 0)
                    disp('COMPUTER WINS!')
                elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == 0)
                    disp('COMPUTER WINS!')
                elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == 0)
                    disp('COMPUTER WINS!')
% Diagonal Winner
                elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == 0)
                    disp('COMPUTER WINS!')
                elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == 0)
                    disp('COMPUTER WINS!')
                else
                    disp('DRAW!')
                end
            end
        end
    end
end
disp('GAME OVER')