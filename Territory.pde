class Territory {
  ArrayList<Territory> neighbors;
  Player player;
  int maxtroops;
  int troops;
  int xpos,ypos;
  int r;
  Territory(Player _player, int _maxtroops, int _troops, int _xpos, int _ypos) {
    neighbors = new ArrayList<Territory>();
    player = _player;
    maxtroops = _maxtroops;
    troops = _troops;
    xpos = _xpos;
    ypos = _ypos;
    r = 15;
  }
  Territory addNeighbor(Territory n) {
    neighbors.add(n);
    return this;
  }
  
  
}