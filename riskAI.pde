int number = 20;


Game game;

void setup() {
  size(800,800);
  game = new Game();
  
  ArrayList<Territory> tempterrs = new ArrayList<Territory>();
  
  
  
  for (int i = 0; i < number; i++) {
    tempterrs.add(new Territory(new Player(),10,5,int(random(800)),int(random(800))));
  }
  
  for (Territory t : tempterrs) {
    game.addTerritory(t);
    game.connectTerritories(t,tempterrs.get(floor(random(tempterrs.size()))));
    game.connectTerritories(t,tempterrs.get(floor(random(tempterrs.size()))));
  }
  
}


void draw() {
  background(255);
  game.drawTerritories();
}