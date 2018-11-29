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
  for (int z = 0; z < 15; z++)
  {
  	// if (Math.random() > 0.5)
  	// 	Kokichi.setType(true);
  	// else
  	// 	Kokichi.setType(false);
  	Kokichi.add(new Asteroid());
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
  for (int q = 0; q < 15; q++)
  {
  	Kokichi.get(q).show();
  	Kokichi.get(q).move();
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

	for (int b : Kokichi) {
		float d = dist(Kaito.getX(), Kaito.getY(), Kokichi.get(i).getX(), Kokichi.get(i).getY());
	}
	if (d < 20)
		Kokichi.remove(i);
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
