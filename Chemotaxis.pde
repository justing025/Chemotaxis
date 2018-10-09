 Bacteria [] aVirus;

 //declare bacteria variables here   
 void setup()   
 { 
 	size(1000,1000);
 	aVirus= new Bacteria[100];
 	for (int i=0; i < 100; i++)
 		aVirus[i] = new Bacteria(10,10);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(0);
 	for (int i = 0; i < aVirus.length; i++ )
 	{
 		aVirus[i].show();
 		aVirus[i].move();
 	}
 	//move and show the bacteria   
 }  
 class Bacteria    
 { 
 int myX, myY, myColor;
 Bacteria(int x, int y)
 {
 	myX=x+10;
 	myY=y;
 	myColor=color(random(255),random(255),random(255));    
}
 	void move()
 	{
 	if(mouseX>myX)
 		{
 		myX=myX+(int)(Math.random()*20)-1;
 	}	
 	else
 	{
 		myX=myX+(int)(Math.random()*20)-20;
 	}
 	if(mouseY>myY)
 	{
 		myY=myY+(int)(Math.random()*20)-1;
 	}
 	else 
  	{

 		myY=myY+(int)(Math.random()*20)-20;
 	}
 	
 	}

 	void show()
 		{
 			fill(myColor);
 			rect(myX,myY,50,50);

 		}
	 
 }
 	//lots of java!   
 