class Dice {

  public int[] rollMult(int num) {
    int[] hits = new int[40];
    int location = 0;

    for (int i = 0; i < num; i++) {
      location += (int)random(1, 6) + (int)random(1, 6);
      if (location >= 40) location -= 40;
      hits[location]++;
    }
    println(hits);
    return hits;
  }


  public int[] capRevolutions_Rolls(int maxRevs, int numRolls) {
    int[] hits = new int[40];
    int location = 0;
    int revolutions = 0;

    for (int i = 0; i < numRolls; i++) {
      location += (int)random(1, 6) + (int)random(1, 6);
      if (location >= 40) {
        location -= 40;
        revolutions++;
      }
      if (revolutions >= maxRevs) {
        revolutions = 0;
        location = 0;
        location += (int)random(1, 6) + (int)random(1, 6);
      }
      hits[location]++;
    }
    return hits;
  }

  public int mapColors(int x, int in_min, int in_max, int out_min, int out_max) {
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
  }
}
