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
     myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     corners = 4;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = 392; //-8
     yCorners[0] = 392; //-8
     xCorners[1] = 416; //16
     yCorners[1] = 400;  //0
     xCorners[2] = 392;  //-8
     yCorners[2] = 408;  //8
     xCorners[3] = 398; //-2
     yCorners[3] = 400;  
   }
}
