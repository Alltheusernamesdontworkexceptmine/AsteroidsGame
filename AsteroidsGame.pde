Spaceship regenald;
//PImage outerSpace;
public int Score = 0;
ArrayList <Asteroids> regenaldTheThird = new ArrayList <Asteroids>();
ArrayList <Bullet> regenaldTheForth = new ArrayList<Bullet>();
boolean keyBoard[] = new boolean [5];
Star regenaldTheSecond[] = new Star [1];
Particle[] regenald1;
public void setup() 
{
  size(1000,1000);
  regenald1 = new Particle[1000];
  for(int i=0; i<regenald1.length; i++)
  {
    regenald1[i] = new Star();
  }
  //outerSpace = loadImage("butterflynebula.jpeg");
  regenald = new Spaceship();
  for(int i=0; i< regenaldTheSecond.length; i++){regenaldTheSecond[i] = new Star();}
  for (int i = 0; i < 200; i++){regenaldTheThird.add(new Asteroids());}
  for (int k = 0; k < 1; k++){regenaldTheForth.add(new Bullet(regenald));}
  //regenaldTheForth.add(new Bullet(regenald));
}
public void draw() 
{
  if (key == 'h' || key == 'H') {
    fill(0,(int)(Math.random()*10));
    rect(0,0,width,height);
    for (int i = 0; i < regenaldTheThird.size(); i++){
    regenaldTheThird.get(i).setX((int)Math.random()*100);
    regenaldTheThird.get(i).setY((int)Math.random()*100);
    }
  }
  else{
    background(0);
    fill(255,255,255,255);
    textSize(40);
    text("Score:"+Score,10,100);
  }
  //image(outerSpace,0,0,width,height);
  regenald.show();
  regenald.move();
  for(int i=0; i<regenaldTheSecond.length; i++){regenaldTheSecond[i].show();}
  for (int i = 0; i < regenaldTheThird.size(); i++){
    regenaldTheThird.get(i).show();
    regenaldTheThird.get(i).move();
    for (int k = 0; k < regenaldTheForth.size(); k++){
        float d = dist(regenaldTheThird.get(i).getX(), regenaldTheThird.get(i).getY(), regenaldTheForth.get(k).getX(), regenaldTheForth.get(k).getY());
          if(d < 20){
            regenaldTheThird.remove(i);
            Score++;
            break;
          }
      }
    }
   for(int d = 0; d< regenaldTheForth.size(); d++){
   if (keyBoard[4]){
        regenaldTheForth.get(d).show();
        regenaldTheForth.get(d).move();
     }
  }

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
  if (key == 'a' || key == 'A') {keyBoard[3] = true;}
  if (key == 's' || key == 'S') {keyBoard[2] = true;}
  if (key == 'd' || key == 'D') {keyBoard[1] = true;}
  if (key == ' '){
    keyBoard[4] = true;
    regenaldTheForth.add(new Bullet(regenald));
  }
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
  if (key == 'a' || key == 'A') {keyBoard[3] = false;}
  if (key == 's' || key == 'S') {keyBoard[2] = false;}
  if (key == 'd' || key == 'D') {keyBoard[1] = false;}
  //if (key == ' '){keyBoard[4] = false;}
}
