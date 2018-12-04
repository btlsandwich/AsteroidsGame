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
	Bullet(Spaceship Kaito)
	{
		myCenterX = myCenterY = 500;
		myPointDirection = 0;
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + myDirectionX;
		myDirectionY = 5*Math.sin(dRadians) + myDirectionY;
	}
	Bullet()
	{

	}
	public void show()
	{
		fill(62,245,222);
	    stroke(62,245,222);
	    
	    //translate the (x,y) center of the ship to the correct position
	    translate((float)myCenterX, (float)myCenterY);

	    //convert degrees to radians for rotate()     
	    float dRadians = (float)(myPointDirection*(Math.PI/180));
	    rotate(dRadians);
	    ellipse((float)myCenterX, (float)myCenterY, 4, 20);
	    //rotate so that the polygon will be drawn in the correct direction
		rotate(-1*dRadians);
   		translate(-1*(float)myCenterX, -1*(float)myCenterY);
	}
}