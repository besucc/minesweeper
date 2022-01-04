int[][] board = { {0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0} };
int[][] tiles = { {1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1} };
PImage tile;
PImage mine;
PImage flag;
PImage bg;
int bomb = 10;
boolean lost = false;

void setup() {
  size(240, 240);
  textSize(22);
  tile = loadImage("tile.PNG");
  mine = loadImage("mine.PNG");
  flag = loadImage("flag.PNG");
  bg = loadImage("board.PNG");
  initboard();
}

void draw() {
  background(bg);
  showtiles();
}

void mousePressed() {
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++) {
        if (!lost) {
          if (mouseButton == LEFT) {
            if (mouseX>j*30&&mouseX<j*30+30&&mouseY>i*30&&mouseY<i*30+30) {
              if (tiles[i][j]==1) {
                tiles[i][j] = 0;
                if (board[i][j]==0) {
                  if (i==0&&j==0) {
                  tiles[i+1][j] = 0;
                  tiles[i+1][j+1] = 0;
                  tiles[i][j+1] = 0;
                } else if (i==7&&j==0) {
                  tiles[i-1][j] = 0;
                  tiles[i-1][j+1] = 0;
                  tiles[i][j+1] = 0;
                } else if (i==0&&j==7) {
                  tiles[i+1][j] = 0;
                  tiles[i+1][j-1] = 0;
                  tiles[i][j-1] = 0;
                } else if (i==7&&j==7) {
                  tiles[i-1][j] = 0;
                  tiles[i-1][j-1] = 0;
                  tiles[i][j-1] = 0;
                } else if (i==0) {
                  tiles[i][j-1] = 0;
                  tiles[i][j+1] = 0;
                  tiles[i+1][j-1] = 0;
                  tiles[i+1][j] = 0;
                  tiles[i+1][j+1] = 0;
                } else if (i==7) {
                  tiles[i][j-1] = 0;
                  tiles[i][j+1] = 0;
                  tiles[i-1][j-1] = 0;
                  tiles[i-1][j] = 0;
                  tiles[i-1][j+1] = 0;
                } else if (j==0) {
                  tiles[i-1][j] = 0;
                  tiles[i+1][j] = 0;
                  tiles[i-1][j+1] = 0;
                  tiles[i][j+1] = 0;
                  tiles[i+1][j+1] = 0;
                } else if (j==7) {
                  tiles[i-1][j] = 0;
                  tiles[i+1][j] = 0;
                  tiles[i-1][j-1] = 0;
                  tiles[i][j-1] = 0;
                  tiles[i+1][j-1] = 0;
                } else {
                  tiles[i-1][j] = 0;
                  tiles[i+1][j] = 0;
                  tiles[i-1][j+1] = 0;
                  tiles[i-1][j-1] = 0;
                  tiles[i+1][j+1] = 0;
                  tiles[i+1][j-1] = 0;
                  tiles[i][j-1] = 0;
                  tiles[i][j+1] = 0;
                }
                if (board[i][j]==bomb) {
                  lost = true;
                }
              }
            }
          }
        } else if (mouseButton == RIGHT) {
          if (mouseX>j*30&&mouseX<j*30+30&&mouseY>i*30&&mouseY<i*30+30) {
            if (tiles[i][j]==1) {
              tiles[i][j] = 2;
            } else if (tiles[i][j]==2) {
              tiles[i][j] = 1;                              
            }
          }
        }
      }
    }
  }
}

void initboard() {
  for (int i = 0; i < 10; i++) {
    int x = round(random(0,7));
    int y = round(random(0,7));
    if (board[x][y]!=bomb) {
      board[x][y] = bomb;
    } else {
      i--;
    }
  }
  for (int i=0; i<8; i++) { //i is cols (x) and j is rows (y)
    for (int j=0; j<8; j++) {
      if (board[i][j]!=bomb) {
        if (i==0&&j==0) {
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j+1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
        } else if (i==7&&j==0) {
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j+1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
        } else if (i==0&&j==7) {
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j-1]==bomb) { board[i][j]++; }
          if (board[i][j-1]==bomb) { board[i][j]++; }
        } else if (i==7&&j==7) {
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j-1]==bomb) { board[i][j]++; }
          if (board[i][j-1]==bomb) { board[i][j]++; }
        } else if (i==0) {
          if (board[i][j-1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
          if (board[i+1][j-1]==bomb) { board[i][j]++; }
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j+1]==bomb) { board[i][j]++; }
        } else if (i==7) {
          if (board[i][j-1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
          if (board[i-1][j-1]==bomb) { board[i][j]++; }
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j+1]==bomb) { board[i][j]++; }
        } else if (j==0) {
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j+1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
          if (board[i+1][j+1]==bomb) { board[i][j]++; }
        } else if (j==7) {
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j-1]==bomb) { board[i][j]++; }
          if (board[i][j-1]==bomb) { board[i][j]++; }
          if (board[i+1][j-1]==bomb) { board[i][j]++; }
        } else {
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j+1]==bomb) { board[i][j]++; }
          if (board[i-1][j-1]==bomb) { board[i][j]++; }
          if (board[i+1][j+1]==bomb) { board[i][j]++; }
          if (board[i+1][j-1]==bomb) { board[i][j]++; }
          if (board[i][j-1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
        }
      }
    }
  }
}

void showtiles() {
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++) {
      if (tiles[i][j]==1) {
        image(tile, j*30, i*30, 30, 30);
      } else if (tiles[i][j]==2) {
        image(flag, j*30, i*30, 30, 30);
      } else if (tiles[i][j]==0) {
        if (board[i][j]!=0&&board[i][j]!=10) {
          if (board[i][j]==1) {
            fill(0,0,255);
          } else if (board[i][j]==2) {
            fill(0,200,0);
          } else if (board[i][j]==3) {
            fill(255,0,0);
          } else if (board[i][j]==4) {
            fill(20,0,130);
          } else if (board[i][j]==5) {
            fill(125,0,0);
          } else if (board[i][j]==6) {
            fill(0,150,150);
          } else if (board[i][j]==7) {
            fill(0);
          } else if (board[i][j]==8) {
            fill(70);
          }
          text(board[i][j], j*30+6, i*30+23);
        } else if (board[i][j]==10) {
          image(mine, j*30, i*30, 30, 30);
        }
      }
    }
  }
}
