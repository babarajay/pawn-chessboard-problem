# Pawn chess-board problem

1. This is initial setup of the chess board when you run the program. Pawn's starting position will be 0, 0 as defined by "#" below. (kind request to refer below diagram after each move during the execution of program; you will get more clarity)

     0    1    2    3    4    5    6    7    8    9  
   ┌────┬────┬────┬────┬────┬────┬────┬────┬────┬────┐
0  │ #  │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┼────┼────┼
1  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┤
2  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┤
3  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┤
4  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┤
5  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┘
6  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┘
7  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┘
8  │    │    │    │    │    │    │    │    │    │    │
   ├────┼────┼────┼────┼────┼────┼────┼────┴────┴────┘
9  │    │    │    │    │    │    │    │    │    │    │
   └────┴────┴────┴────┴────┴────┴────┴────┴────┴────┘

2. Next possible moves will be displayed as selection.

3. For visited cell; next move will not be displayed.

4. When there is no possible move left then program will exit with list of visited coordinates.

# How to run the program

1. Navigate to project directory and run below command:

```
ruby play.rb
```