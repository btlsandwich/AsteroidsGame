class Planet
{
	private int myPX, myPY, myPC1, myPC2, myPC3, myPC4, myPC5, myPC6;
	public Planet()
	{
		myPX = (int)(Math.random()*300)+100;
    	myPY = (int)(Math.random()*300)+100;
    	//jupiter?
    	myPC1 = color(175,95,73);
    	myPC2 = color(255,242,209);
	}
	public void show()
	{
		ellipse(myPX,myPY,(int)(Math.random()*10)+40,(int)(Math.random()*10)+40);
	}
}