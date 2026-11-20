clc
clear

blank_sprite   = 1;
wall_sprite    = 555;
player_sprite  = 243;
goal_sprite    = 831;
answer_tile    = 856;
A_sprite       = 980;
B_sprite       = 981;
C_sprite       = 982;
correct_sprite = 978;
wrong_sprite   = 590;

fightScene = simpleGameEngine('retro_images/retro_pack.png', 16,16,5);

Board = [555, 555,555,555,555,555,555,555,555,555,555,555,555,555;
    555,980,980,980,1,1,590,590,1,1,981,981,981,555;
    555,1,1,1,1,1,1,1,1,1,1,1,1,555;
    555,1,1,1,1,1,1,1,1,831,831,1,1,555;
    555,1,1,1,1,1,1,1,1,831,831,1,1,555;
    555,1,1,1,1,1,1,1,1,831,831,1,1,555;
    555,1,1,1,1,1,1,1,1,831,831,1,1,555;
    555,1,1,1,1,1,1,1,1,831,831,1,1,555;
    555,1,1,243,243,1,1,1,1,1,1,1,1,555;
    555,1,1,243,243,1,1,1,1,1,1,1,1,555;
    555,1,1,243,243,1,1,982,982,982,982,982,982,555;
    555,1,1,243,243,1,1,982,856,856,856,856,982,555;
    555,1,1,243,243,1,1,982,856,856,856,856,982,555;
    555,555,555,555,555,555,555,555,555,555,555,555,555,555];

% ---- Part 4 ----
question = 'What is 7 x 8?';
correctAnswer = "56";

Board(12:13, 9:12) = 1;          
drawScene(fightScene, Board)

text(650, 920, question, 'Color', 'w', 'FontSize', 14)    

answer = '';
key = '';

typed = text(650, 1000, '', 'Color', 'y', 'FontSize', 14); 


done = false;

while done == false
    key = getKeyboardInput(fightScene);     % wait for a key

    if key == "return"                % Enter was pressed
        done = true;
        
    elseif length(key) == 1                 % a letter or number
        answer = [answer key];
        typed.String = answer;              % show it in the box
    end
end

% check your answer!
if answer == correctAnswer
    text(650, 760, 'you are right', 'Color', 'g', 'FontSize', 14)
else
    text(650, 760, 'you are wrong', 'Color', 'r', 'FontSize', 14)
end
