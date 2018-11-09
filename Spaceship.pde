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
    int myBaseColor, myWingColor, bCorners, cCorners, wLCorners, wRCorners, eCorners;
    //indexes
    int[] baseCornersX, baseCornersY, cockpitCornersX, cockpitCornersY;
    float[] wLCornersX, wLCornersY, wRCornersX, wRCornersY, eCornersX, eCornersY;
    Spaceship()
    {
      //makes body red, corners[] to myWingColor
       corners = 16;
       xCorners = new int[corners];
       yCorners = new int[corners];
       //0
       xCorners[0] = 5*5;
       yCorners[0] = 0*5;
       //1
       xCorners[1] = 0*5;
       yCorners[1] = 2*5;
       //2
       xCorners[2] = 1*5;
       yCorners[2] = 3*5;
       //3
       xCorners[3] = -4*5;
       yCorners[3] = 4*5;
       //4
       xCorners[4] = -3*5;
       yCorners[4] = 6*5;
       //5
       xCorners[5] = -6*5;
       yCorners[5] = 4*5;
       //6
       xCorners[6] = -3*5;
       yCorners[6] = 2*5;
       //7
       xCorners[7] = -6*5;
       yCorners[7] = 1*5;
       //8
       xCorners[8] = -5*5;
       yCorners[8] = 0*5;
       //9
       xCorners[9] = -6*5;
       yCorners[9] = -1*5;
       //10
       xCorners[10] = -3*5;
       yCorners[10] = -2*5;
       //11
       xCorners[11] = -6*5;
       yCorners[11] = -4*5;
       //12
       xCorners[12] = -3*5;
       yCorners[12] = -6*5;
       //13
       xCorners[13] = -4*5;
       yCorners[13] = -4*5;
       //14
       xCorners[14] = 1*5;
       yCorners[14] = -3*5;
       //15
       xCorners[15] = 0*5;
       yCorners[15] = -2*5;
      //makes body white, baseCorners[] to myBaseColor
        bCorners = 8;
        baseCornersX = new int[bCorners];
        baseCornersY = new int[bCorners];
        //0
        baseCornersX[0] = 5*5;
        baseCornersY[0] = 0*5;
        //1
        baseCornersX[1] = 0*5;
        baseCornersY[1] = 2*5;
        //2
        baseCornersX[2] = 1*5;
        baseCornersY[2] = 3*5;
        //3
        baseCornersX[3] = -6*5;
        baseCornersY[3] = 1*5;
        //4
        baseCornersX[4] = -5*5;
        baseCornersY[4] = 0*5;
        //5
        baseCornersX[5] = -6*5;
        baseCornersY[5] = -1*5;
        //6
        baseCornersX[6] = 1*5;
        baseCornersY[6] = -3*5;
        //7
        baseCornersX[7] = 0*5;
        baseCornersY[7] = -2*5;
      //makes body blue, cockpitCorners[] to myColor
        cCorners = 6;
        cockpitCornersX = new int[cCorners];
        cockpitCornersY = new int[cCorners];
        //0
        cockpitCornersX[0] = 2*5;
        cockpitCornersY[0] = 0*5;
        //1
        cockpitCornersX[1] = 0*5;
        cockpitCornersY[1] = 1*5;
        //2
        cockpitCornersX[2] = -2*5;
        cockpitCornersY[2] = 1*5;
        //3
        cockpitCornersX[3] = -4*5;
        cockpitCornersY[3] = 0*5;
        //4
        cockpitCornersX[4] = -2*5;
        cockpitCornersY[4] = -1*5;
        //5
        cockpitCornersX[5] = 0*5;
        cockpitCornersY[5] = -1*5;
      //left wing
        wLCorners = 3;
        wLCornersX = new float[wLCorners];
        wLCornersY = new float[wLCorners];
        //0
        wLCornersX[0] = -3*5;
        wLCornersY[0] = 6*5;
        //1
        wLCornersX[1] = -6*5;
        wLCornersY[1] = 4.35*5;
        //2
        wLCornersX[2] = -4*5;
        wLCornersY[2] = 4.35*5;
      //right wing
        wRCorners = 3;
        wRCornersX = new float[wRCorners];
        wRCornersY = new float[wRCorners];
        //0
        wRCornersX[0] = -3*5;
        wRCornersY[0] = -6*5;
        //1
        wRCornersX[1] = -6*5;
        wRCornersY[1] = -4.35*5;
        //2
        wRCornersX[2] = -4*5;
        wRCornersY[2] = -4.35*5; 
      //engine
        eCorners = 6;
        eCornersX = new float[eCorners];
        eCornersY = new float[eCorners];
        //0
        eCornersX[0] = -7*5;
        eCornersY[0] = 0*5;
        //1
        eCornersX[1] = -8*5;
        eCornersY[1] = 1*5;
        //2
        eCornersX[2] = -9*5;
        eCornersY[2] = 0.5*5;
        //3
        eCornersX[3] = -11*5;
        eCornersY[3] = 0*5;
        //4
        eCornersX[4] = -9*5;
        eCornersY[4] =-0.5*5;
        //5
        eCornersX[5] = -8*5;
        eCornersY[5] = -1*5;
       myCenterX = myCenterY = height/2;
       myDirectionX = 0;
       myDirectionY = 0;
       myPointDirection = 0;
       //color intialization
       myColor = color(50,0,150);
       myWingColor = color(215,0,0);
       myBaseColor = color(255,255,255);
    }
    public void show()
    {
      //set up commands
      translate((float)myCenterX, (float)myCenterY);
      float dRadians = (float)(myPointDirection*(Math.PI/180));
      rotate(dRadians);
      ////flame 
      //if (flame == true)
      //{
      //fill(62,245,222);
      //stroke(191,255,247);
      //beginShape();
      //for (int nQ = 0; nQ < eCorners; nQ++)
      //  {
      //    vertex(eCornersX[nQ],eCornersY[nQ]);
      //  }
      //endShape(CLOSE);
      //}
      //body (red)
      fill(myWingColor);
      stroke(myWingColor);
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
      //wing tips left side
      beginShape();
      for (int nL = 0; nL < wLCorners; nL++) 
      {
        vertex(wLCornersX[nL], wLCornersY[nL]);
      }
      endShape(CLOSE);
      //wing tips right side
      beginShape();
      for (int nM = 0; nM < wRCorners; nM++) 
      {
        vertex(wRCornersX[nM], wRCornersY[nM]);
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
    public void engine (boolean flame)
  {
    //set up commands
      translate((float)myCenterX, (float)myCenterY);
      float dRadians = (float)(myPointDirection*(Math.PI/180));
      rotate(dRadians);
     if (flame == true)
      {
      fill(62,245,222);
      stroke(191,255,247);
      beginShape();
      for (int nQ = 0; nQ < eCorners; nQ++)
        {
          vertex(eCornersX[nQ],eCornersY[nQ]);
        }
      endShape(CLOSE);
      }
     //unpacking 
      rotate(-1*dRadians);
      translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  }
