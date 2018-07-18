## Bug Solutions

### 1. Saves game incorrectly

### 2. Correct data but incorrect rendering
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
The correctly formatted string repaints the full 8 character positions instead of only whats necessary for the number.
