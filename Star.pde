class Star implements Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Star()
  {
  myX = myY = 500;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*5;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
   {
     myX=myX+Math.cos(myAngle)%(float)mySpeed;
     myY=myY+Math.sin(myAngle)%(float)mySpeed;
     myAngle=myAngle-0.001;
     //mySpeed=mySpeed+0.01;
     if((myX>1000)||(myX<0)||(myY>1000)||(myY<0))
    {
      myX= myY = 500;
    }
   }
   void show()
   {
     fill(myColor);
     //noStroke();
     rect((float)myX,(float)myY,(int)(Math.random()*5),(int)(Math.random()*5));
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
