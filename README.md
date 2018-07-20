# Build Instructions
### To make and run with GHS tools

`sudo apt-get install libncurses5-dev libncursesw5-dev`

`make -f Makefile.ghs`

`./2048 or multi 2048`

### To make and run with gdb

`sudo apt-get install libncurses5-dev libncursesw5-dev`

`make -f Makefile.gdb`

`./2048 or gdb 2048`

# Bug Hunt
At one point, this program was a fully functional game of 2048 

1. The game stalls and does not react to any keyboard controls. You can only exit the game by using ctrl+c. You probably want to get this figured out first in order to reproduce any of the other bugs.
2. You can now technically perform most of the basic game movements but there are some apparent issues. 
3. The game crashes after one or two game movements.
4. There appears to be an issue with the way the game is saved or loaded. No matter what score you save the game always loads with the same values. You have to quit and run the game two times to get the bug to reproduce. 
5. Restarting (r) the game after playing for a bit seems to cause the score for the next game to be incorrect. Quitting (q) the game and rerunning it appears to "fix" the broken score.

