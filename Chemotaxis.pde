Bacteria one; 
Bacteria [] colony;
color foodColor = color((int)(Math.random()*200)+75, 0, (int)(Math.random()*200)+ 75);
boolean food = false; 

void setup()   
 {     
 	size(600, 600);
 	one = new Bacteria();
 	colony = new Bacteria[15];
 	for (int i=0; i < colony.length; i ++) 
 	{
		colony[i] = new Bacteria();
 	}

 }   
void draw()   
 {    
 	background(0); 
 	one.walk();  
 	one.show(); 
 	for (int i = 0; i < colony.length; i ++)
 	{
 		colony[i].walk();
 		colony[i].show();
 	}  
 	if (food == true)
 	{
 		fill(foodColor);
 		ellipse(mouseX, mouseY, 10, 10);
 	}
 }  
 void mousePressed()
 {
 	fill(foodColor);
 	food = true;
 	// Bacteria.add();
 }
 void mouseReleased()
 {
 	food = false; 
 }


class Bacteria    
 {   
 	int myX, myY; 
 	Bacteria() 
 	{   
 	  int myX = 300;
 	  int myY = 300;
 	} 
 	void walk()
 	{

 		myX = myX + (int)(Math.random()*5)-2; 
 		myY = myY + (int)(Math.random()*5)-2; 
 		fill(0, 255, 0, 25);
 		ellipse(myX, myY, 10, 10);
 		fill(0, 255, 0, 50);
 		ellipse(myX+3, myY+3, 10, 10);
 		fill(0, 255, 0, 75);
 		ellipse(myX+7, myY+7, 10, 10);
 		if (food == true) 
 		{
 			if(myX < mouseX && myY < mouseY)
			{
				myX = myX + ((int)(Math.random()*5) - 1);
				myY = myY + ((int)(Math.random()*5) - 1);
			} else if(myX > mouseX && myY > mouseY)
			{
				myX = myX + ((int)(Math.random()*1) - 1);
				myY = myY + ((int)(Math.random()*1) - 1);
			} else if(myX < mouseX && myY > mouseY)
			{
				myX = myX + ((int)(Math.random()*5) - 1);
				myY = myY + ((int)(Math.random()*1) - 1);
			}  else if(myX > mouseX && myY < mouseY)
			{
				myX = myX + ((int)(Math.random()*1) - 1);
				myY = myY + ((int)(Math.random()*5) - 1);
			}
 		}
 	}
 	void show()
 	{
 		
 		ellipse(myX, myY, 10, 10); 
 	}
 	//lots of java!   
 }    