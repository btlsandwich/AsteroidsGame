Spaceship Kaito;
Star[] Platinum = new Star[100];
ArrayList <Asteroid> Kokichi = new ArrayList <Asteroid>();
ArrayList <Bullet> Maki = new ArrayList <Bullet>();
private boolean wPressed, sPressed, aPressed, dPressed, spacePressed;
private int score, health;
public void setup() 
{
  size(1000,1000);
  score = 0; 
  health = 50;
  Kaito = new Spaceship();
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s] = new Star();
  }
  for (int z = 0; z < 30; z++)
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
  spacePressed = false;
}
public void draw() 	 
{
  background(0);
  //star
  for (int s = 0; s < Platinum.length; s++)
  {
  	Platinum[s].show();
  }
  //asteroid
  /*for(Asteroid tempasteroid : Kokichi){
	tempasteroid.show();
  	tempasteroid.move();
  	for (Bullet tempbullet : Maki)
  	{
	  	float d = dist(tempbullet.getX(), 
	  		tempbullet.getY(), 
	  		tempasteroid.getX(), 
	  		tempasteroid.getY());
		if (d < 30)
		{
			tempasteroid.kill();
			tempbullet.bulletkill();
			if(tempasteroid.getAlive()){
			//tempbullet.();
			}
			score++;
		}
  }
    float dSpace = dist(Kaito.getX(),Kaito.getY(),tempasteroid.getX(),tempasteroid.getY());
      if (dSpace < 30)
      {
        tempasteroid.kill();
        health-=5;
      }
      if (health <= 0)
      {
        
      }
  }*/
  for (int q = 0; q < Kokichi.size(); q++)
  {
  	Kokichi.get(q).show();
  	Kokichi.get(q).move();
  	for (int b = 0; b < Maki.size(); b++)
  	{
  		//between bullet and asteroid
	  	float d = dist(Maki.get(b).getX(), Maki.get(b).getY(), Kokichi.get(q).getX(), Kokichi.get(q).getY());
		if (d < 30)
		{
			Kokichi.remove(q);
			Maki.remove(b);
			//Kokichi.get(q).kill();
			//Maki.get(b).bulletkill();
			score++;
			break;
		}
	//between spaceship and asteroid
	float dSpace = dist(Kaito.getX(),Kaito.getY(),Kokichi.get(q).getX(),Kokichi.get(q).getY());
      if (dSpace < 30)
      {
        Kokichi.remove(q);
        health-=5;
        break;
      }
      if (health <= 0)
      {
      }
    }
  }
  	//bullet
  for (int m = 0; m < Maki.size(); m++)
	{
		Maki.get(m).show();
		Maki.get(m).move();
	}
	//spaceship
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
	//make more asteroids
	if (Kokichi.size() == 0) {
		for (int z = 0; z < 20; z++)
		  {
		  	Kokichi.add(new Asteroid());
		  	if (Math.random() < 0.5)
		  		Kokichi.get(z).setType(true);
		  	else
		  		Kokichi.get(z).setType(false);
		  }
	}
	//hud
	fill(255,255,255,200);
	rect(50,825,900,100,25);
	fill(0);
	textSize(19);
	text("Score: " + score, 100,875);
  for (int i = 0; i < 10; i++)
  {
     fill(0,255,0);
     rect(400,850,health,50);
  }
  text("Health: " + health, 500,875);
	fill(255,255,255,200);

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
		for (int u = 0; u < Kokichi.size(); u++)
			{
				Kokichi.get(u).setX((int)(Math.random()*1000));
				Kokichi.get(u).setY((int)(Math.random()*1000));
			}
		for (int t = 0; t < Maki.size(); t++)
			{
				Maki.remove(t);
				t--;
			}
		}
	if(key == ' ')
	{
		spacePressed = true;
		Maki.add(new Bullet(Kaito));
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
	if(key == ' ')
		{spacePressed = false;}
}
