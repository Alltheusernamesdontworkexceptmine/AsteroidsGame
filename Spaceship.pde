class Spaceship extends Floater {
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   public void setX(int x){myCenterX = x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY = y;}
   public int getY(){return (int)myCenterY;}
   public void setDirectionX(int x){myDirectionX = x;}
   public int getDirectionX(){return (int)myDirectionX;}
   public void setDirectionY(int y){myDirectionY = y;}
   public int getDirectionY(){return (int)myDirectionY = y;}
   public void setPointDirection(int degrees){myPointDirection = degrees;}
   public int getPointDirection(){return (int)myPointDirection;}
}
   public Spaceship(){
     corners = 4;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     xCorners[3] = -2;
     yCorners[3] = 0;
     
}
