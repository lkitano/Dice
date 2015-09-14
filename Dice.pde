void setup()
{
	noLoop();
	size(800, 800);
	textSize(40);
}
void draw()
{
	//your code here
	int value1 = 0;
	int value2 = 0;
	int value3 = 0;
	int value4 = 0;
	int value5 = 0;
	int value6 = 0;
	for(int i = 0; i <= 800; i += 50){
		for(int j = 0; j<= 600; j += 50){
		
		Die bob = new Die(i,j,50);
			bob.show();
			if(bob.myValue == 1){
				value1++;
			} else if (bob.myValue == 2){
				value2+=2;
			} else if (bob.myValue == 3){
				value3+=3;
			} else if (bob.myValue == 4){
				value4+=4;
			} else if (bob.myValue == 5){
				value5+=5;
			} else {
				value6+=6;
			}

		}
		
	}
text("Total: " + 
				(value1 + value2 + value3 + value4 + value5 + value6),300,700);


	
}
void mousePressed()
{	
	background(170,170,170);
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY,myW, myValue;
	Die(int x, int y,int w)  //constructor
	{
		myX = x;
		myY = y;
		myW = w;
		myValue = (int)(Math.random()*6)+1;

		
	}
	void roll()
	{
		if(myValue == 1){
			one();
		} else if (myValue == 2){
			two();
		} else if (myValue == 3){
			three();
		} else if (myValue == 4){
			four();
		} else if (myValue == 5){
			five();
		} else {
			six();
		}
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,myW,myW);
		roll();
	}


	void one(){
		fill(0);
		ellipse(myX+myW/2,myY+myW/2,myW/10,myW/10);
	}

	void two(){
		fill(0);
		ellipse(myX+myW*0.25,myY+myW*0.75,myW/10,myW/10);
		ellipse(myX+0.75*myW,myY+myW/4,myW/10,myW/10);

	}
	void three(){
		fill(0);
		ellipse(myX+myW*0.25,myY+myW*0.75,myW/10,myW/10);
		ellipse(myX+0.75*myW,myY+myW/4,myW/10,myW/10);
		ellipse(myX+myW/2,myY+myW/2,myW/10,myW/10);
	}
	void four(){
		fill(0);
		ellipse(myX+myW*0.25,myY+myW*0.75,myW/10,myW/10);
		ellipse(myX+0.75*myW,myY+myW/4,myW/10,myW/10);
		ellipse(myX+myW*0.25, myY+12.5,myW/10,myW/10);
		ellipse(myX+myW*0.75,myY+myW*0.75,myW/10,myW/10);
	}
	void five(){
		fill(0);
		ellipse(myX+myW*0.25,myY+myW*0.75,myW/10,myW/10);
		ellipse(myX+0.75*myW,myY+myW/4,myW/10,myW/10);
		ellipse(myX+myW*0.25, myY+12.5,myW/10,myW/10);
		ellipse(myX+myW*0.75,myY+myW*0.75,myW/10,myW/10);
		ellipse(myX+myW/2,myY+myW/2,myW/10,myW/10);
	}
	void six(){
		fill(0);
		ellipse(myX+myW*0.25,myY+myW*0.75,myW/10,myW/10);
		ellipse(myX+0.75*myW,myY+myW/4,myW/10,myW/10);
		ellipse(myX+myW*0.25, myY+12.5,myW/10,myW/10);
		ellipse(myX+myW*0.75,myY+myW*0.75,myW/10,myW/10);
		ellipse(myX+myW*0.25,myY+myW/2,myW/10,myW/10);
		ellipse(myX+0.75*myW,myY+myW/2,myW/10,myW/10);
	
	}

	void calculate(){


	}

}



