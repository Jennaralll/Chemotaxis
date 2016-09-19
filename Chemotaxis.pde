Bacteria one; 
 void setup()   
 {     
 	size(300, 300);
 	one = new Bacteria(); 
 }   
 void draw()   
 {    
 	background(0); 
 
 	one.walk(); 
 	one.show();   
 }  
 class Bacteria    
 {   
 	int myX, myY; 
 	Bacteria() 
 	{   
 	  int myX = 150;
 	  int myY = 150;
 	} 
 	void walk()
 	{
 		myX = (int)(Math.random()*3)-1; 
 		myY = (int)(Math.random()*3)-1; 
 	}
 	void show()
 	{
 		fill(255); 
 		ellipse(myX, myY, 50, 50); 
 	}
 	//lots of java!   
 }    