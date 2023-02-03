public void setup()
{
  size (500, 450);
  background (0, 0, 0);
}
public void draw()
{
  sierpinski(100, 350, 300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len<=20){
    triangle(x, y, x+len, y, x+len/2, y-len);
  } else{
    fill(#D8CCE3);
    sierpinski(x, y, len/2);
    fill ((int)(Math.random()*400+200),0, (int)(Math.random()*400));
    sierpinski(x+len/2, y, len/2);
    fill ((int)(Math.random()*400+200),0, (int)(Math.random()*200));
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
