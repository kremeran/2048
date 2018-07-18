## Build and install

`sudo apt-get install libncurses5-dev libncursesw5-dev`

`make`

`sudo make install`

#### Bug Hunt
1. There appears to be an issue with the way the game is saved or loaded. No matter what score you save the game always loads with default values. 
2. Restarting (r) the game after playing for a bit seems to cause the score for the next game to be incorrect. Quitting (q) the game and rerunning it appears to "fix" the broken score.

