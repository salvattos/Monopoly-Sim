class Board {
  int xpos = 35;
  int ypos = 35;
  int sideLength = 70;

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
  void drawBoardWithPercents(int[] redVals, float[] percents) {
    for (int i = 0; i < 40; i++) {
      fill(redVals[i], 0, 0);
      square(xpos, ypos, sideLength);
      fill(255, 255, 255);
      textAlign(CENTER);
      text(i, xpos + sideLength/2, ypos + sideLength/2-5);
      text(percents[i]+"%", xpos + sideLength/2, ypos + sideLength/2+15);
      if (i < 10) xpos += sideLength;
      else if (i < 20) ypos += sideLength;
      else if (i < 30) xpos -= sideLength;
      else if (i < 40) ypos -= sideLength;
    }
  }
}
