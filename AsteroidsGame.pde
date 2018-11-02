Spaceship Kaito;
Star[] Platinum = new Star[100];
Planet[] Maki = new Planet[3];
public void setup() 
{
  Kaito = new Spaceship();
  size(600,600);
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s] = new Star();
  }
  for (int p = 0; p < Maki.length; p++)
  {
  	Maki[p] = new Planet();
  }
}
public void draw() 
{
  background(0);
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s].show();
  }
  Kaito.show();
  Kaito.move();
}
public void keyPressed()
{
	if(key == 'w')
		{Kaito.accelerate(2);}
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
		// Platinum.setSX((int)(Math.random()*width));
		// Platinum.setSY((int)(Math.random()*height));
		}
}