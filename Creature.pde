public class Creature {
  public PVector pos, vel;
  public int speed = 1;
  public float hp = 100.0;
  public final int SIZE = 100;
  public final color COLOR = color(
      (int)(Math.random()*181),
      (int)(Math.random()*182),
      (int)(Math.random()*183)
      );
  
  public Creature(int x, int y) {
    pos = new PVector(x,y);
  
  }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    vel = PVector.random2D().mult(speed);
    
 pos.add(vel);
  
  }
  public boolean collideWorldBounds() {
    if (pos.y + SIZE/2 >= height) {
       PVector bounce = new PVector(0,5*-speed);
      vel.add(bounce);
      return true;
    }
    if (pos.y - SIZE/2 <= 0) {
       PVector bounce = new PVector(0,5*speed);
      vel.add(bounce);
     return true;
    }
       if (pos.x + SIZE/2 >= width) {
       PVector bounce = new PVector(5*-speed,0);
      vel.add(bounce);
      return true;
    }
    if (pos.x - SIZE/2 <= 0) {
       PVector bounce = new PVector(5*speed,0);
      vel.add(bounce);
     return true;
    }
    return false;
  }
  
  //public void eat(Food f) {
    
  }
  
  //public void attack(Creature creatures) {
    
  
