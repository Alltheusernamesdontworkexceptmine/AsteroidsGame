class Star implements Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Star()
  {
  myX = myY = 400;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*5;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
   {
     myX=myX+Math.cos(myAngle)%mySpeed;
     myY=myY+Math.sin(myAngle)%mySpeed;
     myAngle=myAngle-0.001;
     //mySpeed=mySpeed+0.01;
     if((myX>2000)||(myX<0)||(myY>2000)||(myY<0))
    {
      myX= myY = 400;
    }
   }
   void show()
   {
     fill(myColor);
     noStroke();
     ellipse((float)myX,(float)myY,(int)(Math.random()*3),(int)(Math.random()*3));
   }
   
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle//uses an interface
{
  int startX, startY, myColor;
  OddballParticle()
  {
  startX=startY=400;
  myColor = color(188,58,7);
  }
  public void move()
   {
     startX=startX+(int)(Math.random()*10);
   }
   public void show()
   {
     fill(myColor);
     rect(startX,startY,100,100);
   }
   void mousePressed(){
  //myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  regenald1 = new Particle[4000];
  for(int i = 0; i < regenald1.length; i++){
    regenald1[i] = new Star();

  }
}

}
