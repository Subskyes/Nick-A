Creature[] creatures = new Creature[20];
Food[] foods = new Food[10000];
public void setup() {
  size (800,800);
  spawnCreature();
  
  spawnFood();
}

public void draw() {
  background(220);
    
  for (int i = 0; i < creatures.length; i++) {
    if (creatures[i].active ==true) {
         creatures[i].show();
         creatures[i].move();
    }
    
  }
     for (int i = 0; i < foods.length; i++) {
       if (foods[i].active ==true) 
         foods[i].show();
         if (foods[i].active) {
            for (int j = 0; j < creatures.length; j++) {
           creatures[j].eat(foods[i]);
           
           
           
            }
         }
         
    }
  }


private void spawnCreature() {
  for (int i = 0; i < creatures.length; i++) {
    creatures[i] = new Creature((int)(Math.random()*800),(int)(Math.random()*800));
  }
}
private void spawnFood() {
  for (int i = 0; i < foods.length; i++) {
    foods[i] = new Food((int)(Math.random()*800),(int)(Math.random()*800));
  }
}
