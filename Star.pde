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
     myX=myX+Math.cos((float)myAngle)*(int)mySpeed;
     myY=myY+Math.sin((float)myAngle)*(int)mySpeed;
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
     rect((float)myX,(float)myY,(int)(Math.random()*5),(int)(Math.random()*5));
   }
   
}
interface Particle
{
  public void show();
  public void move();
}