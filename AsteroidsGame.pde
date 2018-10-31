Spaceship Kaito;
public void setup() 
{
  Kaito = new Spaceship();
  size(600,600);
  background(0);
}
public void draw() 
{
  Kaito.show();
}
public void keyPressed()
{
	if(key == 'w')
		{Kaito.accelerate(3);}
	if(key == 's')
		{Kaito.accelerate(-3);}
	if(key == 'a')
		{Kaito.turn(5);}
	if(key == 'd')
		{Kaito.turn(-5);}
}