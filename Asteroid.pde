class Asteroid extends Floater
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
    private int myRSpeed, myColor2;
    Asteroid()
    {
    	corners = 7;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	//0
    	//1
    	//2
    	//3
    	//4
    	//5
    	//6
    	myColor = color();
    	myColor2 = color();
    	myCenterX = Math.random()*900;
    	myCenterY = Math.random()*900;
    	myDirectionX = myDirectionY = Math.random()*360;
    	myPointDirection = Math.random()*360;
    	mySpeed = (int)(Math.random()*7)-3;
    }
    public void move()
    {
    	
    }
}
