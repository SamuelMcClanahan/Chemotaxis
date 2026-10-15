
Bacteria[] bug;  
 void setup()   
 {     
 	size (600, 600);
	bug = new Bacteria[400];
	for (int i = 0; i < bug.length; i++)
	{
		bug[i] = new Bacteria();
	}

 }   
 void draw()   
 {    
	background (15, 15, 40);
	fill (255, 255, 0);
	textSize(20);
	textAlign(CENTER);
	text("Move the mouse to attract the bacteria", width/2, 30);
	text("Bacteria: " + bug.length, width / 2, 55);
	for (int i = 0; i < bug.length; i++)
	{
		bug[i].show();
		bug[i].move();
	}

 }  
 class Bacteria    
 {     
 	int myX, myY; 
	int myColor;

	Bacteria()
	{
		myX = (int)(Math.random() * 600);
		myY = (int)(Math.random() * 600);
		int b = (int)(Math.random() * 256);
		int r = (int)(Math.random() * 256);
		int g = (int)(Math.random() * 256);
		myColor = color(r, g, b);	
	}

void show()
{ 	noStroke();
	fill(myColor);
	beginShape();
	vertex(myX, myY -10);
	vertex(myX +3, myY - 3);
	vertex(myX + 10, myY);
	vertex(myX + 3, myY + 3);
	vertex(myX, myY + 12);
	vertex(myX - 3, myY + 3);
	vertex(myX - 10, myY);
	vertex(myX - 3, myY - 3);
	endShape(CLOSE);
}

void move()
{
	if (mousePressed) {
		if (myX > mouseX)
		myX -= (int)(Math.random() * 5) - 1;
	else
		myX += (int)(Math.random() * 5) - 1;

	if (myY < mouseY)
		myY += (int)(Math.random() * 5)  -1;
	
	else 
		myY -= (int)(Math.random() * 5) - 1;
	}
	else
	{
	if (myX < mouseX)
		myX += (int)(Math.random() * 5) - 1;
	else 
		myX -= (int)(Math.random() * 5) - 1;
	if (myY < mouseY)
		myY -= (int)(Math.random() * 5) - 1;
	else 
		myY += (int)(Math.random() * 5) - 1;
	}

 }    	
}