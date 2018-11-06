class Planet
{
	private int myPX, myPY, myPC1, myPC2, myPC3, myPC4, myPC5, myPC6;
	public Planet()
	{
		myPX = (int)(Math.random()*300)+100;
    	myPY = (int)(Math.random()*300)+100;
    	//jupiter
    	myPC1 = color(175,95,73);
    	myPC2 = color(255,22,29);
    	// //neptune
    	// myPC3 = color();
    	// myPC4 = color();
    	// //uranus
    	// myPC5 = color();
    	// myPC6 = color();
	}
	public void show()
	{
		noStroke();
		fill(myPC1);
		ellipse(myPX,myPY,70,70);
		fill(myPC2);
		ellipse(myPX-4,myPY,30,10);
		fill(myPC3);
		// ellipse(myPX,myPY,40,40);
		// fill(myPC4);
		// ellipse(myPX,myPY,)
	}
}