Spaceship regenald;
public void setup() 
{
  regenald = new Spaceship();
  size(800,800);
  background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
public void draw() 
{
  fill(0,10000);
  rect(0,0,width,height);
  noStroke();
  if (key == 'w'){regenald.accelerate(1);}
  if (key == 's'){regenald.accelerate(-1);}
  if (key == 'a'){regenald.turn(1);}
  if (key == 'd'){regenald.turn(-1);}
  regenald.show();
  regenald.move();
}
