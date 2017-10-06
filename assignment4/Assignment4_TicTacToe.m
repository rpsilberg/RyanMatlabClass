% Submitted by: Ryan Silberg
% Due date: October 6, 2017
% Assignment 4 Tic Tac 

% ******GAME RULES******
%    1=Yes & 2=No, X=-1 & O=0
%    Failure to chose an available space results in loss of turn

% WELCOME MESSAGE
disp('WELCOME TO TIC TAC TOE')
% PROMPT TO PLAY (1 = Yes ; 2 = No)
want2play = input('Do you want to play a game? (type "1" for yes or "0" for no):','s');
while (want2play > '0')
    playerNumber = input('How many players? (1 or 2):','s');
    % 1 PLAYER GAME
    if (playerNumber == '1')
        computerLevel = input('Choose difficulty (1=Beginner, 2=Moderate, 3=Expert):','s');
        if (computerLevel == '1') % BEGINNER LEVEL
            while (want2play > '0')
            % DISPLAY GAME BOARD
                ticTacToe = [1,4,7;2,5,8;3,6,9]
                pause(1)
            % FIRST MOVE (PLAYER)
                move = input('ENTER MOVE:','s');
                if (move == '1')
                    ticTacToe(1,1) = -1
                elseif (move == '2')
                    ticTacToe(2,1) = -1
                elseif (move == '3')
                    ticTacToe(3,1) = -1
                elseif (move == '4')
                    ticTacToe(1,2) = -1
                elseif (move == '5')
                    ticTacToe(2,2) = -1
                elseif (move == '6')
                    ticTacToe(3,2) = -1
                elseif (move == '7')
                    ticTacToe(1,3) = -1
                elseif (move == '8')
                    ticTacToe(2,3) = -1
                elseif (move == '9')
                    ticTacToe(3,3) = -1
                end
                pause(1)
                for i = 1:4 % Loop for moves two through nine or until winner decided
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
                    pause(1)
            % CHECK FOR COMPUTER WINNER
                    if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == 0)
                        if (ticTacToe(1,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
                    elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == 0)
                        if (ticTacToe(2,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
                    elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == 0)
                        disp('COMPUTER WINS!')
                        break
                    elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == 0)
                        if (ticTacToe(1,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
                    elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == 0)
                        disp('COMPUTER WINS!')
                        break
                    elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == 0)
                        disp('COMPUTER WINS!')
                        break
                    elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == 0)
                        if (ticTacToe(1,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
                    elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == 0)
                        disp('COMPUTER WINS!')
                        break
                    end
            % PLAYER MOVE: (Includes check for move availability)
                    move = input('ENTER MOVE:','s');
                    if (move == '1')
                        if (ticTacToe(1,1) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,1) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,1) == 1)
                            ticTacToe(1,1) = -1
                        end
                    elseif (move == '2')
                        if (ticTacToe(2,1) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,1) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,1) == 2)
                            ticTacToe(2,1) = -1
                        end
                    elseif (move == '3')
                        if (ticTacToe(3,1) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,1) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,1) == 3)
                            ticTacToe(3,1) = -1
                        end
                    elseif (move == '4')
                        if (ticTacToe(1,2) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,2) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,2) == 4)
                            ticTacToe(1,2) = -1
                        end
                    elseif (move == '5')
                        if (ticTacToe(2,2) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,2) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,2) == 5)
                            ticTacToe(2,2) = -1
                        end
                    elseif (move == '6')
                        if (ticTacToe(3,2) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,2) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,2) == 6)
                            ticTacToe(3,2) = -1
                        end
                    elseif (move == '7')
                        if (ticTacToe(1,3) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,3) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,3) == 7)
                            ticTacToe(1,3) = -1
                        end
                    elseif (move == '8')
                        if (ticTacToe(2,3) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,3) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,3) == 8)
                            ticTacToe(2,3) = -1
                        end
                    elseif (move == '9')
                        if (ticTacToe(3,3) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,3) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,3) == 9)
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
        elseif (computerLevel == '2') % MODERATE LEVEL
            while (want2play > '0')
            % DISPLAY GAME BOARD
                ticTacToe = [1,4,7;2,5,8;3,6,9]
                pause(1)
            % FIRST MOVE (COMPUTER)
                move = 5
                ticTacToe(2,2) = 0
                pause(1)
                for i = 1:4 % Loop for moves two through nine or until winner decided
            % PLAYER MOVE: (Includes check for move availability)
                    move = input('ENTER MOVE:','s');
                    if (move == '1')
                        if (ticTacToe(1,1) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,1) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,1) == 1)
                            ticTacToe(1,1) = -1
                        end
                    elseif (move == '2')
                        if (ticTacToe(2,1) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,1) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,1) == 2)
                            ticTacToe(2,1) = -1
                        end
                    elseif (move == '3')
                        if (ticTacToe(3,1) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,1) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,1) == 3)
                            ticTacToe(3,1) = -1
                        end
                    elseif (move == '4')
                        if (ticTacToe(1,2) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,2) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,2) == 4)
                            ticTacToe(1,2) = -1
                        end
                    elseif (move == '5')
                        disp('Invalid Move, Lose Turn')
                    elseif (move == '6')
                        if (ticTacToe(3,2) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,2) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,2) == 6)
                            ticTacToe(3,2) = -1
                        end
                    elseif (move == '7')
                        if (ticTacToe(1,3) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,3) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(1,3) == 7)
                            ticTacToe(1,3) = -1
                        end
                    elseif (move == '8')
                        if (ticTacToe(2,3) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,3) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(2,3) == 8)
                            ticTacToe(2,3) = -1
                        end
                    elseif (move == '9')
                        if (ticTacToe(3,3) == -1)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,3) == 0)
                            disp('Invalid Move, Lose Turn')
                        elseif (ticTacToe(3,3) == 9)
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
                    pause(1)
            % CHECK FOR COMPUTER WINNER
                    if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == 0)
                        if (ticTacToe(1,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
                    elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == 0)
                        if (ticTacToe(2,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
                    elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == 0)
                        disp('COMPUTER WINS!')
                        break
                    elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == 0)
                        if (ticTacToe(1,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
                    elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == 0)
                        disp('COMPUTER WINS!')
                        break
                    elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == 0)
                        disp('COMPUTER WINS!')
                        break
                    elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == 0)
                        if (ticTacToe(1,1) == 0)
                            disp('COMPUTER WINS!')
                            break
                        end
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
        elseif (computerLevel == '3') % EXPERT LEVEL (Picking unavailable move results in loss)
            while (want2play > '0')
            % DISPLAY GAME BOARD
                ticTacToe = [1,4,7;2,5,8;3,6,9]
                pause(1)
                for i = 1:1
                % MOVE 1 (COMPUTER)
                    move = 5
                    ticTacToe(2,2) = 0
                    pause(1)
                % MOVE 2
                    move = input('ENTER MOVE:','s');
                    if (move == '1')
                        ticTacToe(1,1) = -1
                    elseif (move == '2')
                        ticTacToe(2,1) = -1
                    elseif (move == '3')
                        ticTacToe(3,1) = -1
                    elseif (move == '4')
                        ticTacToe(1,2) = -1
                    elseif (move == '5')
                        disp('Invalid Move')
                        disp('COMPUTER WINS!')
                    elseif (move == '6')
                        ticTacToe(3,2) = -1
                    elseif (move == '7')
                        ticTacToe(1,3) = -1
                    elseif (move == '8')
                        ticTacToe(2,3) = -1
                    elseif (move == '9')
                        ticTacToe(3,3) = -1
                    else
                        disp('Invalid Move')
                        disp('COMPUTER WINS!')
                    end
                    pause(1)
                % MOVE 3
                    if (move == '7')
                        ticTacToe(1,1)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(3,3) == 9)
                            ticTacToe(3,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,3) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(2,1) == 2)
                            ticTacToe(2,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,2) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(1,2) == 4)
                            ticTacToe(1,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,1) = 0
                            disp('DRAW!')
                        end    
                % MOVE 3
                    elseif (move == '4')
                        ticTacToe(1,1)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(3,3) == 9)
                            ticTacToe(3,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,3) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(2,1) == 2)
                            ticTacToe(2,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,2) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(1,2) == 4)
                            ticTacToe(1,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,1) = 0
                            disp('DRAW!')
                        end          
                % MOVE 3
                    elseif (move == '1')
                        ticTacToe(3,1)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(1,3) == 7)
                            ticTacToe(1,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,2) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(3,2) == 6)
                            ticTacToe(3,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,3) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(2,1) == 2)
                            ticTacToe(2,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,3) = 0
                            disp('DRAW!')
                        end          
                % MOVE 3
                    elseif (move == '2')
                        ticTacToe(3,1)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(1,3) == 7)
                            ticTacToe(1,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,2) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(3,2) == 6)
                            ticTacToe(3,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,3) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(2,1) == 2)
                            ticTacToe(2,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,3) = 0
                            disp('DRAW!')
                        end        
                % MOVE 3
                    elseif (move == '9')
                        ticTacToe(1,3)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(3,1) == 3)
                            ticTacToe(3,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,2) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(1,2) == 4)
                            ticTacToe(1,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,1) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(2,3) == 8)
                            ticTacToe(2,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,1) = 0
                            disp('DRAW!')
                        end       
                % MOVE 3
                    elseif (move == '8')
                        ticTacToe(1,3)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(3,1) == 3)
                            ticTacToe(3,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(3,2) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(1,2) == 4)
                            ticTacToe(1,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,1) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(2,3) == 8)
                            ticTacToe(2,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,1) = 0
                            disp('DRAW!')
                        end        
                % MOVE 3
                    elseif (move == '3')
                        ticTacToe(3,3)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(1,1) == 1)
                            ticTacToe(1,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,1) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(2,3) == 8)
                            ticTacToe(2,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,2) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(3,2) == 6)
                            ticTacToe(3,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,3) = 0
                            disp('DRAW!')
                        end        
                % MOVE 3
                    elseif (move == '6')
                        ticTacToe(3,3)= 0
                        pause(1)
                % MOVE 4
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 5
                        if (ticTacToe(1,1) == 1)
                            ticTacToe(1,1) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(2,1) = 0
                        end
                        pause(1)
                % MOVE 6
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 7
                        if (ticTacToe(2,3) == 8)
                            ticTacToe(2,3) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,2) = 0
                        end
                        pause(1)
                % MOVE 8
                        move = input('ENTER MOVE:','s');
                        if (move == '1')
                            if (ticTacToe(1,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,1) == 1)
                                ticTacToe(1,1) = -1
                            end
                        elseif (move == '2')
                            if (ticTacToe(2,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,1) == 2)
                                ticTacToe(2,1) = -1
                            end
                        elseif (move == '3')
                            if (ticTacToe(3,1) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,1) == 3)
                                ticTacToe(3,1) = -1
                            end
                        elseif (move == '4')
                            if (ticTacToe(1,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,2) == 4)
                                ticTacToe(1,2) = -1
                            end
                        elseif (move == '5')
                            disp('Invalid Move, Lose Turn')
                        elseif (move == '6')
                            if (ticTacToe(3,2) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,2) == 6)
                                ticTacToe(3,2) = -1
                            end
                        elseif (move == '7')
                            if (ticTacToe(1,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(1,3) == 7)
                                ticTacToe(1,3) = -1
                            end
                        elseif (move == '8')
                            if (ticTacToe(2,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(2,3) == 8)
                                ticTacToe(2,3) = -1
                            end
                        elseif (move == '9')
                            if (ticTacToe(3,3) == -1)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 0)
                                disp('Invalid Move, Lose Turn')
                            elseif (ticTacToe(3,3) == 9)
                                ticTacToe(3,3) = -1
                            end
                        else
                            disp('Invalid Move, Lose Turn')
                        end
                        pause(1)
                % MOVE 9
                        if (ticTacToe(3,2) == 6)
                            ticTacToe(3,2) = 0
                            disp('COMPUTER WINS!')
                            break
                        else
                            ticTacToe(1,3) = 0
                            disp('DRAW!')
                        end              
                    end
                end
                disp('GAME OVER')
            % PROMPT TO PLAY AGAIN (1 = Yes ; 2 = No)
                want2play = input('Do you want to play again? (type "1" for yes or "0" for no):','s');
            end
        else
            disp('Invalid, Try Again')
        end
    end
    % 2 PLAYER GAME
    if (playerNumber == '2')
        while (want2play > '0')
        % DISPLAY GAME BOARD
            ticTacToe = [1,4,7;2,5,8;3,6,9]
            % PLAYER 1 MOVE
            move = input('PLAYER 1 ENTER MOVE:','s');
            if (move == '1')
                ticTacToe(1,1) = -1
            elseif (move == '2')
                ticTacToe(2,1) = -1
            elseif (move == '3')
                ticTacToe(3,1) = -1
            elseif (move == '4')
                ticTacToe(1,2) = -1
            elseif (move == '5')
                ticTacToe(2,2) = -1
            elseif (move == '6')
                ticTacToe(3,2) = -1
            elseif (move == '7')
                ticTacToe(1,3) = -1
            elseif (move == '8')
                ticTacToe(2,3) = -1
            elseif (move == '9')
                ticTacToe(3,3) = -1
            end
            pause(1)
            for i = 1:4 % Loop for moves two through nine or until winner decided
        % PLAYER 2 MOVE: (Includes check for move availability)
                move = input('PLAYER 2 ENTER MOVE:','s'); 
                if (move == '1')
                    if (ticTacToe(1,1) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,1) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,1) == 1)
                        ticTacToe(1,1) = 0
                    end
                elseif (move == '2')
                    if (ticTacToe(2,1) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,1) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,1) == 2)
                        ticTacToe(2,1) = 0
                    end
                elseif (move == '3')
                    if (ticTacToe(3,1) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,1) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,1) == 3)
                        ticTacToe(3,1) = 0
                    end
                elseif (move == '4')
                    if (ticTacToe(1,2) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,2) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,2) == 4)
                        ticTacToe(1,2) = 0
                    end
                elseif (move == '5')
                    if (ticTacToe(2,2) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,2) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,2) == 5)
                        ticTacToe(2,2) = 0
                    end
                elseif (move == '6')
                    if (ticTacToe(3,2) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,2) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,2) == 6)
                        ticTacToe(3,2) = 0
                    end
                elseif (move == '7')
                    if (ticTacToe(1,3) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,3) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,3) == 7)
                        ticTacToe(1,3) = 0
                    end
                elseif (move == '8')
                    if (ticTacToe(2,3) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,3) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,3) == 8)
                        ticTacToe(2,3) = 0
                    end
                elseif (move == '9')
                    if (ticTacToe(3,3) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,3) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,3) == 9)
                        ticTacToe(3,3) = 0
                    end
                else
                    disp('Invalid Move, Lose Turn')
                end
                pause(1)
        % CHECK FOR PLAYER WINNER
                if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == 0)
                    if (ticTacToe(1,1) == 0)
                        disp('PLAYER 2 WINS!')
                        break
                    end
                elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == 0)
                    if (ticTacToe(2,1) == 0)
                        disp('PLAYER 2 WINS!')
                        break
                    end
                elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == 0)
                    disp('PLAYER 2 WINS!')
                    break
                elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == 0)
                    if (ticTacToe(1,1) == 0)
                        disp('PLAYER 2 WINS!')
                        break
                    end
                elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == 0)
                    disp('PLAYER 2 WINS!')
                    break
                elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == 0)
                    disp('PLAYER 2 WINS!')
                    break
                elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == 0)
                    if (ticTacToe(1,1) == 0)
                        disp('PLAYER 2 WINS!')
                        break
                    end
                elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == 0)
                    disp('PLAYER 2 WINS!')
                    break
                end
                % PLAYER 1 MOVE: (Includes check for move availability)
                move = input('PLAYER 1 ENTER MOVE:','s');
                if (move == '1')
                    if (ticTacToe(1,1) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,1) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,1) == 1)
                        ticTacToe(1,1) = -1
                    end
                elseif (move == '2')
                    if (ticTacToe(2,1) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,1) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,1) == 2)
                        ticTacToe(2,1) = -1
                    end
                elseif (move == '3')
                    if (ticTacToe(3,1) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,1) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,1) == 3)
                        ticTacToe(3,1) = -1
                    end
                elseif (move == '4')
                    if (ticTacToe(1,2) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,2) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,2) == 4)
                        ticTacToe(1,2) = -1
                    end
                elseif (move == '5')
                    if (ticTacToe(2,2) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,2) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,2) == 5)
                        ticTacToe(2,2) = -1
                    end
                elseif (move == '6')
                    if (ticTacToe(3,2) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,2) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,2) == 6)
                        ticTacToe(3,2) = -1
                    end
                elseif (move == '7')
                    if (ticTacToe(1,3) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,3) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(1,3) == 7)
                        ticTacToe(1,3) = -1
                    end
                elseif (move == '8')
                    if (ticTacToe(2,3) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,3) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(2,3) == 8)
                        ticTacToe(2,3) = -1
                    end
                elseif (move == '9')
                    if (ticTacToe(3,3) == -1)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,3) == 0)
                        disp('Invalid Move, Lose Turn')
                    elseif (ticTacToe(3,3) == 9)
                        ticTacToe(3,3) = -1
                    end
                else
                    disp('Invalid Move, Lose Turn')
                end
                pause(1)
        % CHECK FOR PLAYER WINNER
                if (ticTacToe(1,1) + ticTacToe(1,2) + ticTacToe(1,3) == -3)
                    disp('PLAYER 1 WINS!')
                    break
                elseif (ticTacToe(2,1) + ticTacToe(2,2) + ticTacToe(2,3) == -3)
                    disp('PLAYER 1 WINS!')
                    break
                elseif (ticTacToe(3,1) + ticTacToe(3,2) + ticTacToe(3,3) == -3)
                    disp('PLAYER 1 WINS!')
                    break
                elseif (ticTacToe(1,1) + ticTacToe(2,1) + ticTacToe(3,1) == -3)
                    disp('PLAYER 1 WINS!')
                    break
                elseif (ticTacToe(1,2) + ticTacToe(2,2) + ticTacToe(3,2) == -3)
                    disp('PLAYER 1 WINS!')
                    break
                elseif (ticTacToe(1,3) + ticTacToe(2,3) + ticTacToe(3,3) == -3)
                    disp('PLAYER 1 WINS!')
                    break
                elseif (ticTacToe(1,1) + ticTacToe(2,2) + ticTacToe(3,3) == -3)
                    disp('PLAYER 1 WINS!')
                    break
                elseif (ticTacToe(1,3) + ticTacToe(2,2) + ticTacToe(3,1) == -3)
                    disp('PLAYER 1 WINS!')
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
    end
end
% FAREWELL MESSAGE
disp('GOOD-BYE')