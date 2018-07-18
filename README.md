## Build and install

`sudo apt-get install libncurses5-dev libncursesw5-dev`

`make`

#### Bug Hunt
1. The game seems to stall and does not react to any keyboard controls. You can only exit the game by using ctrl+c.
2. There appears to be an issue with the way the game is saved or loaded. No matter what score you save the game always loads with the same values. You have to quit and run the game two times to get the bug to reproduce. 
3. Restarting (r) the game after playing for a bit seems to cause the score for the next game to be incorrect. Quitting (q) the game and rerunning it appears to "fix" the broken score.

