void setup()
{
  size(500,550);
  noLoop();
}
void draw()
{
	background(192);
	int sum = 0;
  for(int y = 5; y<=450; y=y+60){
    for (int x = 50; x < 500; x = x + 60){
        Die bob = new Die(x, y);
        //count += rolls;
        bob.roll();
        bob.show();
      	sum += bob.value;
      	}
    }
    text(sum, 250, 530);


}
void mousePressed()
{
  redraw();
  background(192);
}
class Die //models one single dice cube
{
  int value;
  int myX,myY;
  int count;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    count = 0;
  }
  void roll()
  {
    value = (int)((Math.random()*6)+1);
  }
  void show()
  {
    fill(100);
    noStroke();
    rect(myX-35,myY,50,50,20);
    fill(0);
    stroke(220);
    if(value == 1){
      ellipse(myX-10, myY+25, 5, 5);
    }else if(value == 2){ 
      ellipse(myX-3, myY+25, 5, 5);
      ellipse(myX-17, myY+25, 5, 5);
    }else if(value == 3){ 
      ellipse(myX-3, myY+34, 5, 5);
      ellipse(myX-10, myY+25, 5, 5);
      ellipse(myX-17, myY+16, 5, 5);
    }else if(value == 4){ 
      ellipse(myX-2, myY+15, 5, 5);
      ellipse(myX-18, myY+15, 5, 5);
      ellipse(myX-2, myY+35, 5, 5);
      ellipse(myX-18, myY+35, 5, 5);
    }else if(value == 5){ 
      ellipse(myX-10, myY+25, 5, 5);
      ellipse(myX-2, myY+15, 5, 5);
      ellipse(myX-18, myY+15, 5, 5);
      ellipse(myX-2, myY+35, 5, 5);
      ellipse(myX-18, myY+35, 5, 5);
    }else if(value == 6){ 
      ellipse(myX-2, myY+15, 5, 5);
      ellipse(myX-18, myY+15, 5, 5);
      ellipse(myX-2, myY+35, 5, 5);
      ellipse(myX-18, myY+35, 5, 5);
      ellipse(myX-2, myY+25, 5, 5);
      ellipse(myX-18, myY+25, 5, 5);
    }
  }
}

