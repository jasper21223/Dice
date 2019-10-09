void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	Die bob = new Die(100,100);
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int value;
	int myX,myY;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		value = (int)((Math.random()*6)+1);
	}
	void show()
	{
		noStroke();
		fill(255);
		rect(myX,myY,50,50);
	}
}
