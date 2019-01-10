class Bullet extends Floater
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
    public boolean bulletalive;
	Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + theShip.getDirectionY();
		bulletalive = true;
	}
	public void bulletkill() {
		
	}
	public void show()
	{
		if (bulletalive) {
		fill(62,245,222);
	    stroke(62,245,222);
	    
	    //translate the (x,y) center of the ship to the correct position
	    translate((float)myCenterX, (float)myCenterY);

	    //convert degrees to radians for rotate()     
	    float dRadians = (float)(myPointDirection*(Math.PI/180));
	    rotate(dRadians);
	    ellipse((float)0, (float)0, 20, 4);
	    //rotate so that the polygon will be drawn in the correct direction
		rotate(-1*dRadians);
   		translate(-1*(float)myCenterX, -1*(float)myCenterY);
   		}
	}
	public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectzionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
	// System.out.println(myCenterX + ", " + myCenterY);  
  }  
}