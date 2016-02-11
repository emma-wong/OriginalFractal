public void setup()
{
	size(500, 500);
}

public void draw()
{
    background(0);
	myFractal(500-mouseX, 500-mouseY, (mouseX+mouseY)/2);
}

public void myFractal(float x, float y, int len) 
{
   if (len < 10) {       
    triangle(x, y, x-len/2, y+len, x+len/2, y+len);
    triangle(x, y, x+len/2, y-len, x-len/2, y-len); 
}
   else {
    triangle(x, y*1.5, x-len/2, y+len, x+len/2, y+len);
    triangle(x, y/1.5, x+len/2, y-len, x-len/2, y-len);  
    triangle(x/1.5, y, x-len/2, y+len, x-len/2, y-len);
    triangle(x*1.5, y, x+len/2, y-len, x+len/2, y+len);      
    myFractal(x/1.3, y/1.5, len/2);       
    myFractal(x*1.3, y/1.5, len/2); 
   }
     	 
}