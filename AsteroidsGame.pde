Spaceship regenald;
//PImage outerSpace;
boolean keyBoard[] = new boolean [4];
Star regenaldTheSecond[] = new Star [1000];
Particle[] regenald1;
public void setup() 
{
  size(1000,1000);
   regenald1 = new Particle[5000];
  for(int i=0; i<regenald1.length; i++)
  {
    regenald1[i] = new Star();
  }
  //outerSpace = loadImage("butterflynebula.jpeg");
  regenald = new Spaceship();
  for(int i=0; i< regenaldTheSecond.length; i++){regenaldTheSecond[i] = new Star();}
}
public void draw() 
{
  fill(0,100);
  rect(0,0,width,height);
  noStroke();
  //image(outerSpace,0,0,width,height);
  regenald.show();
  regenald.move();
  for(int i=0; i<regenaldTheSecond.length; i++){regenaldTheSecond[i].show();}
  for (int i = 0; i < keyBoard.length; i++) 
  {
    if (keyBoard[0]){regenald.accelerate(0.0125);}
    if (keyBoard[1]){regenald.turn(1);}
    if (keyBoard[2]){regenald.accelerate(-0.0125);}
    if (keyBoard[3]){regenald.turn(-1);}
  }
  for(int i=0; i<regenald1.length; i++)
   {
     regenald1[i].show();
     regenald1[i].move();
   }  
}
public void keyPressed(){
  if (key == 'w' || key == 'W') {keyBoard[0] = true;}
  if (key == 'a' || key == 'A') {keyBoard[1] = true;}
  if (key == 's' || key == 'S') {keyBoard[2] = true;}
  if (key == 'd' || key == 'D') {keyBoard[3] = true;}
  if (key == 'h' || key == 'H') {
    regenald.setX((int)(Math.random()*width));
    regenald.setY((int)(Math.random()*height));
    regenald.setDirectionX(0);
    regenald.setDirectionY(0);
    regenald.setPointDirection((int)(Math.random()*256));
  }
 }
public void keyReleased(){
  if (key == 'w' || key == 'W') {keyBoard[0] = false;}
  if (key == 'a' || key == 'A') {keyBoard[1] = false;}
  if (key == 's' || key == 'S') {keyBoard[2] = false;}
  if (key == 'd' || key == 'D') {keyBoard[3] = false;}
}
