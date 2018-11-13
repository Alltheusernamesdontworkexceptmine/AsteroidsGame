class Spaceship extends Floater {
   public void setX(int x){myCenterX = x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY = y;}
   public int getY(){return (int)myCenterY;}
   public void setDirectionX(double x){myDirectionX = x;}
   public double getDirectionX(){return myDirectionX;}
   public void setDirectionY(double y){myDirectionY = y;}
   public double getDirectionY(){return myDirectionY;}
   public void setPointDirection(int degrees){myPointDirection = degrees;}
   public double getPointDirection(){return (int)myPointDirection;}
   public Spaceship(){
     myCenterX = myCenterY = 400;
     myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     corners = 4;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8; //-8
     yCorners[0] = -8; //-8
     xCorners[1] = 16; //16
     yCorners[1] = 0;  //0
     xCorners[2] = -8;  //-8
     yCorners[2] = 8;  //8
     xCorners[3] = -2; //-2
     yCorners[3] = 0;  
   }
}
