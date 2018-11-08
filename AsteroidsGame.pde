Spaceship Kaito;
Star[] Platinum = new Star[100];
private boolean wPressed, sPressed, aPressed, dPressed;
public void setup() 
{
  Kaito = new Spaceship();
  size(700,700);
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s] = new Star();
  }
  wPressed = false;
  sPressed = false;
  aPressed = false;
  dPressed = false; 
}
public void draw() 	 
{
  background(0);
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s].show();
  }
  Kaito.show(false);
  Kaito.move();
  	if(wPressed == true)
		{Kaito.accelerate(0.2); Kaito.show(true);}
	if(sPressed == true)
		{Kaito.accelerate(-0.2);}
	if(dPressed == true)
		{Kaito.turn(4);}
	if(aPressed == true)
		{Kaito.turn(-4);}
}
public void keyPressed()
{
	if(key == 'w')
		{wPressed = true;}
	if(key == 's')
		{sPressed = true;}
	if(key == 'd')
		{dPressed = true;}
	if(key == 'a')
		{aPressed = true;}
	if(key == 'h')
		{
		Kaito.setX((int)(Math.random()*width));
		Kaito.setY((int)(Math.random()*height));
		Kaito.accelerate(0);
		Kaito.setDirectionX(0);
		Kaito.setDirectionY(0);
		for (int s = 0; s < Platinum.length; s++)
		  {
		  	Platinum[s] = new Star();
		  }
		}
}
public void keyReleased()
{
	if(key == 'w')
		{wPressed = false;}
	if(key == 's')
		{sPressed = false;}
	if(key == 'd')
		{dPressed = false;}
	if(key == 'a')
		{aPressed = false;}
}