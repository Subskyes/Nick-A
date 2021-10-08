Creature[] creatures = new Creature[20];
Food[] foods = new Food[100];
public void setup() {
  size (800,800);
  spawnCreature();
  
  spawnFood();
}

public void draw() {
  background(220);
  for (int i = 0; i < creatures.length; i++) {
    creatures[i].show();
    creatures[i].move();
    foods[i].show();
  }
}

private void spawnCreature() {
  for (int i = 0; i < creatures.length; i++) {
    creatures[i] = new Creature((int)(Math.random()*800),(int)(Math.random()*800));
  }
}
