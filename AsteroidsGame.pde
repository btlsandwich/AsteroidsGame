Spaceship Kaito;
//Star[] Platinum = new Star[200];
public void setup() 
{
  Kaito = new Spaceship();
  size(600,600);
}
public void draw() 
{
  background(0);
  Kaito.show();
  Kaito.move();

}
public void keyPressed()
{
	if(key == 'w')
		{Kaito.accelerate(2);}
	if(key == 's')
		{Kaito.accelerate(-2);}
	if(key == 'a')
		{Kaito.turn(10);}
	if(key == 'd')
		{Kaito.turn(-10);}
	if(key == 'h')
		{
		Kaito.setX((int)(Math.random()*width));
		Kaito.setY((int)(Math.random()*height));
		Kaito.accelerate(0);
		Kaito.setDirectionX(0);
		Kaito.setDirectionY(0);
		}
}