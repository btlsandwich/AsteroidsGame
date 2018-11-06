class Star //note that this class does NOT extend Floater
{
  private int mySX,mySY;
  public void setSX(int a) { mySX = a; }
  public void setSY(int b) { mySY = b; }
  public Star()
  {
    mySX = (int)(Math.random()*width);
    mySY = (int)(Math.random()*height);
  }
  public void show()
  {
  	stroke(255);
  	fill(255);
  	beginShape();
  		vertex(mySX+6,mySY);
  		vertex(mySX+1,mySY+1);
  		vertex(mySX,mySY+6);
  		vertex(mySX-1,mySY+1);
  		vertex(mySX-6,mySY);
  		vertex(mySX-1,mySY-1);
  		vertex(mySX,mySY-6);
  		vertex(mySX+1,mySY-1);
  	endShape(CLOSE);
  }
}
