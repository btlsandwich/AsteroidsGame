class Spaceship extends Floater  
{   
    public void setX(int x) { myCenterX = x; }
    public void setY(int y) { myCenterY = y; }
    public int getX() { return myCenterX; }
    public int getY() { return myCenterY; } 
    public void setDirectionX(double x) { myDirectionX = x; }
    public void setDirectionY(double y) { myDirectionY = y; }
    public double getDirectionX() { return myDirectionX; }
    public double getDirectionY() { return myDirectionY; }
    public void setPointDirection(int degrees) { myPointDirection = degrees; }
    public double getPointDirection() { return myPointDirection; }
    //color variables
    
    Spaceship()
    {
       corners = 16;
       xCorners = new int[corners];
       yCorners = new int[corners];
       //0
       xCorners[0] = 5;
       yCorners[0] = 0;
       //1
       xCorners[1] = 0;
       yCorners[1] = 2;
       //2
       xCorners[2] = 1;
       yCorners[2] = 3;
       //3
       xCorners[3] = -4;
       yCorners[3] = 4;
       //4
       xCorners[4] = -3;
       yCorners[4] = 6;
       //5
       xCorners[5] = -6;
       yCorners[5] = 4;
       //6
       xCorners[6] = -3;
       yCorners[6] = 2;
       //7
       xCorners[7] = -6;
       yCorners[7] = 1;
       //8
       xCorners[8] = 0;
       yCorners[8] = 5;
       //9
       xCorners[9] = -6;
       yCorners[9] = -1;
       //10
       xCorners[10] = -3;
       yCorners[10] = -2;
       //11
       xCorners[11] = -6;
       yCorners[11] = -4;
       //12
       xCorners[12] = -3;
       yCorners[12] = -6;
       //13
       xCorners[13] = -4;
       yCorners[13] = -4;
       //14
       xCorners[14] = 1;
       yCorners[14] = -3;
       //15
       xCorners[15] = 0;
       yCorners[15] = -2;
       myCenterX = (int)(Math.random()*500);
       myCenterY = (int)(Math.random()*500);
       myDirectionX = 1;
       myDirectionY = 1;
       myPointDirection = 0;
       myColor = color();
    }
}
