## Bug Solutions
### 1. Program hangs upon startup
The main while loop to run the game has a comparator instead of an assignment.
Incorrect code in main.c
```
while ((ch == getch()) != 'q' && ch != 'Q') {
```
Which should be corrected to
```
while ((ch = getch()) != 'q' && ch != 'Q') {
```
### 2. Incorrect val initialization
When a new tile is randomly added to the board a value of "2" or "4" is written to the gameboard. The value is initialized as a float when it should be initialized as an int. The display tries to find the correct color index which is now out of bounds resulting in a seg fault. 
Incorrect code in board.c
```
float val;
```
Which should be corrected to
```
int val;
```
### 3. Game searches out of bounds for empty tiles
The game searches the board of values of 0 (empty tile) in order to figure out where to randomly place the next tile (value of 1 or 2). The search extends beyond the limits of the game board which includes the location of the games score. If the score is 0 (the game just started) it adds that "tile" to the list of valid spawn locations. Sometimes the score is written with a value intended for a legitimate tile. 
Incorrect code in board.c
```
for (int y = 0; y <= BOARD_SIZE; y++) {
		for (int x = 0; x <= BOARD_SIZE; x++) {
```
Which should be corrected to
```
for (int y = 0; y < BOARD_SIZE; y++) {
		for (int x = 0; x < BOARD_SIZE; x++) {
```
### 3. Saves game incorrectly
The lseek() function repositions the offset of the open file associated with the file descriptor. SEEK_SET moves it to the offset. SEEK_CUR sets it to the current location plus the offset.
Incorrect code in save.c
```
lseek(fd, 0, SEEK_CUR);
```
Which should be corrected to
```
lseek(fd, 0, SEEK_SET);
```
### 4. Correct data but incorrect rendering
The correctly formatted string repaints the full 8 character positions instead of only whats necessary for the number.
Incorrect code in draw.c
```
mvwprintw(stats_win, 2, 1, "%d", stats->score);
mvwprintw(stats_win, 5, 1, "%d", stats->max_score);
```
Which should be corrected to
```
mvwprintw(stats_win, 2, 1, "%8d", stats->score);
mvwprintw(stats_win, 5, 1, "%8d", stats->max_score);
```
