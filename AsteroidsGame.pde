Spaceship Kaito;
Star[] Platinum = new Star[100];
ArrayList <Asteroid> Kokichi = new ArrayList <Asteroid>();
private boolean wPressed, sPressed, aPressed, dPressed;
public void setup() 
{
  size(900,900);
  Kaito = new Spaceship();
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s] = new Star();
  }
  for (int z = 0; z < 20; z++)
  {
  	Kokichi.add(new Asteroid());
  	if (Math.random() < 0.5)
  		Kokichi.get(z).setType(true);
  	else
  		Kokichi.get(z).setType(false);
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
  for (int q = 0; q < Kokichi.size(); q++)
  {
  	Kokichi.get(q).show();
  	Kokichi.get(q).move();
  	float d = dist(Kaito.getX(), Kaito.getY(), Kokichi.get(q).getX(), Kokichi.get(q).getY());
	if (d < 30)
	{
		Kokichi.remove(q);
		q--;
	}
  }
  Kaito.show();
  Kaito.move();
  	if(wPressed == true)
		{Kaito.accelerate(0.2); Kaito.engine(true);}
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
