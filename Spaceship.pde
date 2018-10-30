class Spaceship extends Floater  
{   
    public void setX(int x) { myCenterX = x; }
    public void setY(int y) { myCenterY = y; }
    public int getX() { return (int)myCenterX; }
    public int getY() { return (int)myCenterY; } 
    public void setDirectionX(double x) { myDirectionX = x; }
    public void setDirectionY(double y) { myDirectionY = y; }
    public double getDirectionX() { return myDirectionX; }
    public double getDirectionY() { return myDirectionY; }
    public void setPointDirection(int degrees) { myPointDirection = degrees; }
    public double getPointDirection() { return myPointDirection; }
    //color variables
    int myBaseColor, myWingColor, bCorners, cCorners;
    int[] baseCornersX, baseCornersY, cockpitCornersX, cockpitCornersY;
    Spaceship()
    {
      //makes body red, corners[] to myWingColor
       corners = 16;
       xCorners = new int[corners];
       yCorners = new int[corners];
       //0
       xCorners[0] = 5*4;
       yCorners[0] = 0*4;
       //1
       xCorners[1] = 0*4;
       yCorners[1] = 2*4;
       //2
       xCorners[2] = 1*4;
       yCorners[2] = 3*4;
       //3
       xCorners[3] = -4*4;
       yCorners[3] = 4*4;
       //4
       xCorners[4] = -3*4;
       yCorners[4] = 6*4;
       //5
       xCorners[5] = -6*4;
       yCorners[5] = 4*4;
       //6
       xCorners[6] = -3*4;
       yCorners[6] = 2*4;
       //7
       xCorners[7] = -6*4;
       yCorners[7] = 1*4;
       //8
       xCorners[8] = -5*4;
       yCorners[8] = 0*4;
       //9
       xCorners[9] = -6*4;
       yCorners[9] = -1*4;
       //10
       xCorners[10] = -3*4;
       yCorners[10] = -2*4;
       //11
       xCorners[11] = -6*4;
       yCorners[11] = -4*4;
       //12
       xCorners[12] = -3*4;
       yCorners[12] = -6*4;
       //13
       xCorners[13] = -4*4;
       yCorners[13] = -4*4;
       //14
       xCorners[14] = 1*4;
       yCorners[14] = -3*4;
       //15
       xCorners[15] = 0*4;
       yCorners[15] = -2*4;
      //makes body white, baseCorners[] to myBaseColor
        bCorners = 8;
        baseCornersX = new int[bCorners];
        baseCornersY = new int[bCorners];
        //0
        baseCornersX[0] = 5*4;
        baseCornersY[0] = 0*4;
        //1
        baseCornersX[1] = 0*4;
        baseCornersY[1] = 2*4;
        //2
        baseCornersX[2] = 1*4;
        baseCornersY[2] = 3*4;
        //3
        baseCornersX[3] = -6*4;
        baseCornersY[3] = 1*4;
        //4
        baseCornersX[4] = -5*4;
        baseCornersY[4] = 0*4;
        //5
        baseCornersX[5] = -6*4;
        baseCornersY[5] = -1*4;
        //6
        baseCornersX[6] = 1*4;
        baseCornersY[6] = -3*4;
        //7
        baseCornersX[7] = 0*4;
        baseCornersY[7] = -2*4;
      //makes body blue, cockpitCorners[] to myColor
        cCorners = 6;
        cockpitCornersX = new int[cCorners];
        cockpitCornersY = new int[cCorners];
        //0
        cockpitCornersX[0] = 2*4;
        cockpitCornersY[0] = 0*4;
        //1
        cockpitCornersX[1] = 0*4;
        cockpitCornersY[1] = 1*4;
        //2
        cockpitCornersX[2] = -2*4;
        cockpitCornersY[2] = 1*4;
        //3
        cockpitCornersX[3] = -4*4;
        cockpitCornersY[3] = 0*4;
        //4
        cockpitCornersX[4] = -2*4;
        cockpitCornersY[4] = -1*4;
        //5
        cockpitCornersX[5] = 0*4;
        cockpitCornersY[5] = -1*4;
       myCenterX = (int)(Math.random()*500);
       myCenterY = (int)(Math.random()*500);
       myDirectionX = 1;
       myDirectionY = 1;
       myPointDirection = 0;
       //color intialization
       myColor = color(50,0,250);
       myWingColor = color(255,0,0);
       myBaseColor = color(255,255,255);
    }
    public void show()
    {
      fill(myWingColor);
      stroke(myWingColor);
      //set up commands
      translate((float)myCenterX, (float)myCenterY);
      float dRadians = (float)(myPointDirection*(Math.PI/180));
      rotate(dRadians);
      //body (red)
      beginShape();
      for (int nI = 0; nI < corners; nI++)
      {
        vertex(xCorners[nI], yCorners[nI]);
      }
      endShape(CLOSE);
      // float dRadians = (float)(myPointDirection*(Math.PI/180));
      //body (white)
      fill(myBaseColor);
      stroke(myBaseColor);
      beginShape();
      for (int nJ = 0; nJ < bCorners; nJ++)
      {
        vertex(baseCornersX[nJ], baseCornersY[nJ]);
      }
      endShape(CLOSE);
      // float dRadians = (float)(myPointDirection*(Math.PI/180));
      //body (blue)
      fill(myColor);
      stroke(myColor);
      beginShape();
      for (int nK = 0; nK < cCorners; nK++)
      {
        vertex(cockpitCornersX[nK], cockpitCornersY[nK]);
      }
      endShape(CLOSE);
      //unpacking 
      rotate(-1*dRadians);
      translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
}
