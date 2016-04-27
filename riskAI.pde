class Territory {
  ArrayList<Territory> neighbors;
  Player player;
  Territory(Player _player) {
    neighbors = new ArrayList<Territory>();
    player = _player;
  }
}