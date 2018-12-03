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

	}
}