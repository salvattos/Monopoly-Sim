class Board {
  int xpos = 25;
  int ypos = 25;
  int sideLength = 50;

  int acc = 0;

  void drawBoard(int[] redVals) {
    for (int i = 0; i < 40; i++) {
      fill(redVals[i], 0, 0);
      square(xpos, ypos, sideLength);
      fill(255, 255, 255);
      text(i, xpos + 20, ypos + 30);
      if (i < 10) xpos += sideLength;
      else if (i < 20) ypos += sideLength;
      else if (i < 30) xpos -= sideLength;
      else if (i < 40) ypos -= sideLength;
    }
  }
}
