public class Creature {
  public PVector pos, vel;
  public int speed = 10;
  public float hp = 10.0;
  public final int SIZE = 25;
  public final color COLOR = color(
      (int)(Math.random()*181),
      (int)(Math.random()*182),
      (int)(Math.random()*183)
      );
      public boolean active = true;
  
  public Creature(int x, int y) {
    pos = new PVector(x,y);
  
  }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    vel = PVector.random2D().mult(speed);
     hp-=0.1;
     
     if(hp <= 0)
    this.active = false;
    
    System.out.println("HP: "+hp);
    
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
  
public void eat(Food f) {
    double dist = PVector.sub(this.pos,f.pos).mag();
    if (dist <= this.SIZE / 2 + f.SIZE / 2) {
   
      f.active = false;
      
      //hp+=1;
  
  }
}
}
  
  //public void attack(Creature creatures) {
    
  
