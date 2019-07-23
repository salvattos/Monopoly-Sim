/**
* The dumbest Monopoly Monte Carlo sim
* Authors: Shawn Salvatto, Tim McCarthy
* 
**/
Board board = new Board();
Dice dice = new Dice();
int[] redVals = new int[40];
int[] hits = new int[40];

boolean mouse=false;
int numRolls=100000000;
float[] percents = new float[40];

void setup() {
  size(850, 850);
}

void mousePressed() {
  mouse = true;
}

void draw() {
  if (mouse || frameCount==1) {

    textSize(50);
    textAlign(CENTER);
    text("MONOPOLY BITCH", width/2, height/2);
    textSize(12);
    
    //hits = dice.rollMult(numRolls);
    hits = dice.capRevolutions_Rolls(1, numRolls);

    for (int i = 0; i < redVals.length; i++) {
      redVals[i] = dice.map(hits[i], min(hits), max(hits), 0, 225);
      percents[i] = 100*float(hits[i])/numRolls;
    }
    
    //board.drawBoard(redVals);
    board.drawBoardWithPercents(redVals, percents);
    mouse=false;
  }
}
