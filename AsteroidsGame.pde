Spaceship Kaito;
Star[] Platinum = new Star[100];
public void setup() 
{
  Kaito = new Spaceship();
  size(600,600);
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s] = new Star();
  }
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
}
public void keyPressed()
{
	if(key == 'w')
		{Kaito.accelerate(2); Kaito.show(true);}
	if(key == 's')
		{Kaito.accelerate(-2);}
	if(key == 'd')
		{Kaito.turn(10);}
	if(key == 'a')
		{Kaito.turn(-10);}
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