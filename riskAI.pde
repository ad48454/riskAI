int number = 20;


Game game;
Player player1;
Player player2;
Player player3;



void setup() {
  size(800,800);
  game = new Game();
  
  player1 = new Player(color(255,0,0));
  player2 = new Player(color(0,255,0));
  player3 = new Player(color(0,0,255));
  
  
  ArrayList<Territory> tempterrs = new ArrayList<Territory>();
  tempterrs.add(new Territory(player1,10,5,200,600));
  tempterrs.add(new Territory(player2,10,7,300,450));
  tempterrs.add(new Territory(player3,10,3,300,300));
  tempterrs.add(new Territory(player2,10,2,450,200));
  tempterrs.add(new Territory(player1,10,1,690,550));
  
  //for (int i = 0; i < number; i++) {
  //  tempterrs.add(new Territory(new Player(),10,5,int(random(800)),int(random(800))));
  //}
  
  for (Territory t : tempterrs) {
    game.addTerritory(t);
    //game.connectTerritories(t,tempterrs.get(floor(random(tempterrs.size()))));
    //game.connectTerritories(t,tempterrs.get(floor(random(tempterrs.size()))));
  }
  
  game.connectTerritories(tempterrs.get(0),tempterrs.get(1));
  game.connectTerritories(tempterrs.get(1),tempterrs.get(2));
  game.connectTerritories(tempterrs.get(2),tempterrs.get(3));
  game.connectTerritories(tempterrs.get(3),tempterrs.get(4));
  game.connectTerritories(tempterrs.get(4),tempterrs.get(1));
}


void draw() {
  background(255);
  game.drawTerritories();
}

void keyPressed() {
  game.makeMove();
}

void mouseClicked() {
  game.hasSelected(mouseX, mouseY);
}