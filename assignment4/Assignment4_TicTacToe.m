% Submitted by: Ryan Silberg
% Due date: October 6, 2017
% Assignment 4 Tic Tac 

% ******GAME RULES******
%    X=-1, O=0, 1=10, 2=20, 3=30, 4=40, 5=50, 6=60, 7=70, 8=80, 9=90
%    Failure to chose an available space results in loss of turn

% WELCOME MESSAGE
disp('WELCOME TO TIC TAC TOE')
% PROMPT TO PLAY (1 = Yes ; 2 = No)
want2play = input('Do you want to play a game? (type "1" for yes or "0" for no):','s');
while (want2play > '0')
% DISPLAY GAME BOARD
    ticTacToe = [10,40,70;20,50,80;30,60,90]
    pause(1)
% FIRST MOVE (COMPUTER)
    move = 5
    ticTacToe(2,2) = 0
    for i = 1:4 % Loop for moves two through nine or until winner decided
% PLAYER MOVE: (Includes check for move availability)
        disp('1=10, 2=20, 3=30, 4=40, 5=50, 6=60, 7=70, 8=80, 9=90')
        move = input('ENTER MOVE (1-9):','s') 
        if (move == '1')
            if (ticTacToe(1,1) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(1,1) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(1,1) == 10)
                ticTacToe(1,1) = -1
            end
        elseif (move == '2')
            if (ticTacToe(2,1) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(2,1) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(2,1) == 20)
                ticTacToe(2,1) = -1
            end
        elseif (move == '3')
            if (ticTacToe(3,1) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(3,1) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(3,1) == 30)
                ticTacToe(3,1) = -1
            end
        elseif (move == '4')
            if (ticTacToe(1,2) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(1,2) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(1,2) == 40)
                ticTacToe(1,2) = -1
            end
        elseif (move == '5')
            if (ticTacToe(2,2) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(2,2) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(2,2) == 50)
                ticTacToe(2,2) = -1
            end
        elseif (move == '6')
            if (ticTacToe(3,2) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(3,2) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(3,2) == 60)
                ticTacToe(3,2) = -1
            end
        elseif (move == '7')
            if (ticTacToe(1,3) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(1,3) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(1,3) == 70)
                ticTacToe(1,3) = -1
            end
        elseif (move == '8')
            if (ticTacToe(2,3) == -1)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(2,3) == 0)
                disp('Invalid Move, Lose Turn')
            elseif (ticTacToe(2,3) == 80)
                ticTacToe(2,3) = -1
            end
        elseif (move == '9')
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
        pause(1)
% CHECK FOR PLAYER WINNER
        if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == -3)
            disp('PLAYER WINS!')
            break
        elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == -3)
            disp('PLAYER WINS!')
            break
        elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == -3)
            disp('PLAYER WINS!')
            break
        elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == -3)
            disp('PLAYER WINS!')
            break
        elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == -3)
            disp('PLAYER WINS!')
            break
        elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == -3)
            disp('PLAYER WINS!')
            break
        elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == -3)
            disp('PLAYER WINS!')
            break
        elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == -3)
            disp('PLAYER WINS!')
            break
        end
        computerChoices = find(ticTacToe>=1); % Randomize Computer Move (Ensures availability of move)
% COMPUTER MOVE
        move = computerChoices(randperm(length(computerChoices),1))
        if (move == 1)
            ticTacToe(1,1) = 0
        elseif (move == 2)
            ticTacToe(2,1) = 0
        elseif (move == 3)
            ticTacToe(3,1) = 0
        elseif (move == 4)
            ticTacToe(1,2) = 0
        elseif (move == 5)
            ticTacToe(2,2) = 0
        elseif (move == 6)
            ticTacToe(3,2) = 0
        elseif (move == 7)
            ticTacToe(1,3) = 0
        elseif (move == 8)
            ticTacToe(2,3) = 0
        elseif (move == 9)
            ticTacToe(3,3) = 0
        end
% CHECK FOR COMPUTER WINNER
        if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == 0)
            disp('COMPUTER WINS!')
            break
        elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == 0)
            disp('COMPUTER WINS!')
            break
        elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == 0)
            disp('COMPUTER WINS!')
            break
        elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == 0)
            disp('COMPUTER WINS!')
            break
        elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == 0)
            disp('COMPUTER WINS!')
            break
        elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == 0)
            disp('COMPUTER WINS!')
            break
        elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == 0)
            disp('COMPUTER WINS!')
            break
        elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == 0)
            disp('COMPUTER WINS!')
            break
        end
    end
% CHECK FOR DRAW
    if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) ~= 0) 
        if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) ~= -3)
            if (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) ~= 0)
                if (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) ~= -3)
                    if (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) ~= 0)
                        if (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) ~= -3)
                            if (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) ~= 0)
                                if (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) ~= -3)
                                    if (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) ~= 0)
                                        if (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) ~= -3)
                                            if (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) ~= 0)
                                                if (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) ~= -3)
                                                    if (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) ~= 0)
                                                        if (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) ~= -3)
                                                            if (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) ~= 0)
                                                                if (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) ~= -3)
                                                                    disp('DRAW!')
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    disp('GAME OVER')
% PROMPT TO PLAY AGAIN (1 = Yes ; 2 = No)
    want2play = input('Do you want to play again? (type "1" for yes or "0" for no):','s');
end
% FAREWELL MESSAGE
disp('GOOD-BYE')