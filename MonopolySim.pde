
Board board = new Board();
Dice dice = new Dice();
int[] redVals = new int[40];
int[] hits = new int[40];

void setup() {
  size(600, 600); 
  hits = dice.rollMult(100000);

  for (int i = 0; i < redVals.length; i++) {
    redVals[i] = dice.map(hits[i], min(hits), max(hits), 0, 225);
  }
  board.drawBoard(redVals);
}

void draw() {
}
