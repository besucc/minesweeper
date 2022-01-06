int[][] board = { {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0} };
int[][] tiles = { {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1} };
PImage tile;
PImage mine;
PImage flag;
PImage bg;
int bomb = 10;
boolean lost = false;
boolean won = false;
boolean started = false;
int mode; //0 small 1 medium 2 large
int size; //8 small 16 medium 22 large
int bombs; //10 small 40 medium 100 large

void setup() {
  size(660, 660);
  surface.setResizable(true);
  textSize(22);
  tile = loadImage("tile.PNG");
  mine = loadImage("mine.PNG");
  flag = loadImage("flag.PNG");
  bg = loadImage("board.PNG");
}

void draw() {
  if (started) {
    if (!lost&&!won) {
      image(bg, 0, 0);
      image(bg, 240, 0);
      image(bg, 0, 240);
      image(bg, 240, 240);
      image(bg, 480, 0);
      image(bg, 0, 480);
      image(bg, 240, 480);
      image(bg, 480, 240);
      image(bg, 480, 480);
      showtiles();
      wincheck();
    } else {
      if (won) {
        fill(0);
        text("you win!!", 50, 50);
      }
    }
  } else {
    fill(0);
    text("Choose difficulty", 100, 100);
    text("Beginner (8x8)", 20, 300);
    text("Medium (16x16)", 220, 300);
    text("Expert (22x22)", 440, 300);
  }
}

void mousePressed() {
  if (started) {
    for (int i=0; i<size; i++) {
      for (int j=0; j<size; j++) {
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
                  } else if (i==size-1&&j==0) {
                    tiles[i-1][j] = 0;
                    tiles[i-1][j+1] = 0;
                    tiles[i][j+1] = 0;
                  } else if (i==0&&j==size-1) {
                    tiles[i+1][j] = 0;
                    tiles[i+1][j-1] = 0;
                    tiles[i][j-1] = 0;
                  } else if (i==size-1&&j==size-1) {
                    tiles[i-1][j] = 0;
                    tiles[i-1][j-1] = 0;
                    tiles[i][j-1] = 0;
                  } else if (i==0) {
                    tiles[i][j-1] = 0;
                    tiles[i][j+1] = 0;
                    tiles[i+1][j-1] = 0;
                    tiles[i+1][j] = 0;
                    tiles[i+1][j+1] = 0;
                  } else if (i==size-1) {
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
                  } else if (j==size-1) {
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
                }
                if (board[i][j]==bomb) {
                  lost = true;
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
  } else {
    if (mouseButton == LEFT) {
      if (mouseX<200) {
        mode = 0;
        size = 8;
        surface.setSize(240, 240);
      } else if (mouseX<420) {
        mode = 1;
        size = 16;
        surface.setSize(480, 480);
      } else {
        mode = 2;
        size = 22;
      }
      started = true;
      initboard();
    }
  }
}

void initboard() {
  if (mode==0) {
    bombs = 10;
  } else if (mode==1) {
    bombs = 40;
  } else {
    bombs = 100;
  }
  for (int i = 0; i < bombs; i++) {
    int x = round(random(0,size-1));
    int y = round(random(0,size-1));
    if (board[x][y]!=bomb) {
      board[x][y] = bomb;
    } else {
      i--;
    }
  }
  for (int i=0; i<size; i++) { //i is cols (x) and j is rows (y)
    for (int j=0; j<size; j++) {
      if (board[i][j]!=bomb) {
        if (i==0&&j==0) {
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j+1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
        } else if (i==size-1&&j==0) {
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j+1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
        } else if (i==0&&j==size-1) {
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j-1]==bomb) { board[i][j]++; }
          if (board[i][j-1]==bomb) { board[i][j]++; }
        } else if (i==size-1&&j==size-1) {
          if (board[i-1][j]==bomb) { board[i][j]++; }
          if (board[i-1][j-1]==bomb) { board[i][j]++; }
          if (board[i][j-1]==bomb) { board[i][j]++; }
        } else if (i==0) {
          if (board[i][j-1]==bomb) { board[i][j]++; }
          if (board[i][j+1]==bomb) { board[i][j]++; }
          if (board[i+1][j-1]==bomb) { board[i][j]++; }
          if (board[i+1][j]==bomb) { board[i][j]++; }
          if (board[i+1][j+1]==bomb) { board[i][j]++; }
        } else if (i==size-1) {
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
        } else if (j==size-1) {
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
  for (int i=0; i<size; i++) {
    for (int j=0; j<size; j++) {
      if (!lost) {
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
      } else {
        if (board[i][j]==bomb) {
          image(mine, j*30, i*30, 30, 30);
        }
        if (tiles[i][j]==2&&board[i][j]!=bomb) {
          image(mine, j*30, i*30, 30, 30);
          fill(255, 0, 0);
          text("X", j*30+6, i*30+23);
        }
      }
    }
  }
}

void wincheck() {
  boolean found = false;
  for (int i=0; i<size; i++) {
    for (int j=0; j<size; j++) {
      if ((tiles[i][j]==1||tiles[i][j]==2)&&board[i][j]!=bomb) {
        found = true;
      }
    }
  }
  if (!found) {
    won = true;
  }
}
