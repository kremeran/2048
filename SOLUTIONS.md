## Bug Solutions

### 1. Saves game incorrectly
The lseek() function repositions the offset of the open file associated with the file descriptor. SEEK_SET moves it to the offset. SEEK_CUR sets it to the current location plus the offset.
Incorrect code in save.c
```
lseek(fd, 0, SEEK_CUR);
```
Which should be corrected to
```
lseek(fd, 0, SEEK_SET);
```
### 2. Correct data but incorrect rendering
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