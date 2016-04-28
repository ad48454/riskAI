int number = 20;


Game game;
Player player1;
Player player2;
Player player3;


int gameStatus;
ArrayList<Territory> tempterrs = new ArrayList<Territory>();
ArrayList<Integer>   terrArmies = new ArrayList<Integer>();

void setup() {
  size(800,800);
  game = new Game();
  gameStatus = 1;
  player1 = new Player(color(255,0,0));
  player2 = new Player(color(0,255,0));
  player3 = new Player(color(0,0,255));
  
  



  terrArmies.add((0));
  tempterrs.add(new Territory(player1,10,terrArmies.get(0),200,600, tempterrs.size()));
  terrArmies.add((0));
  tempterrs.add(new Territory(player2,10,terrArmies.get(1),300,450, tempterrs.size()));
  terrArmies.add((0));
  tempterrs.add(new Territory(player3,10,terrArmies.get(2),300,300, tempterrs.size()));
  terrArmies.add((0));
  tempterrs.add(new Territory(player2,10,terrArmies.get(3),450,200, tempterrs.size()));
  terrArmies.add((0));
  tempterrs.add(new Territory(player1,10,terrArmies.get(4),690,550, tempterrs.size()));
  
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
  if (gameStatus==1){
    game.addArmies(mouseX, mouseY);
  }
  if (gameStatus == 2){
      game.hasSelected(mouseX, mouseY);
  }
}