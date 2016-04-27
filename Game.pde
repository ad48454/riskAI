class Game {
  ArrayList<Territory> territories;
  ArrayList<Player> players;
  int playerind;
  int mx, my;
  boolean hasSelectedE = true;
  boolean hasSelectedA = true;
  Territory selectedA;
  Territory selectedE;
  Game() {
    territories = new ArrayList<Territory>();
    players = new ArrayList<Player>();
    playerind = 0;
  }
  Game drawTerritories() {
    for (Territory t : territories) {
      fill(t.player.c);
      ellipse(t.xpos, t.ypos, 2*t.r, 2*t.r);
      for (Territory n : t.neighbors) {
        line(t.xpos, t.ypos, n.xpos, n.ypos);
        text("t.troops - " + t.troops,t.xpos,t.ypos);
      }
    }
    return this;
  }
  Game addTerritory(Territory t) {
    territories.add(t);
    return this;
  }
  Game connectTerritories(Territory t1, Territory t2) {
    t1.addNeighbor(t2);
    t2.addNeighbor(t1);
    return this;
  }

  Game makeMove() {
    hasSelectedA = false;
    hasSelectedE = false;   
    println("make");
    return this;
    
  }

  Game doMove() {
    if (selectedA.troops > selectedE.troops+1) {
    }
    return this;
  }

  Game hasSelected(int _mx, int _my) {
    println("hasselected");
    if (!hasSelectedA || !hasSelectedE) {
      mx = _mx;
      my = _my;
      for (Territory t : territories) {
        int dx = mx-t.xpos;
        int dy = my-t.ypos;
        if (dx*dx+dy*dy<t.r*t.r) {
          if (hasSelectedA) {selectedE = t; hasSelectedE = true; doMove();}
         else { selectedA = t;     hasSelectedA = true;};
        }
      }
    }

  return this;
  }
}