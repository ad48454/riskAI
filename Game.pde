class Game {
  ArrayList<Territory> territories;
  Game() {
    territories = new ArrayList<Territory>();
  }
  Game drawTerritories() {
    for (Territory t : territories) {
      ellipse(t.xpos,t.ypos,30,30);
      for (Territory n : t.neighbors) {
        line(t.xpos,t.ypos,n.xpos,n.ypos);
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
}