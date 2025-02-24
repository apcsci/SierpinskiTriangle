public void setup(){
  size(650,650);
  noLoop();
}
public void draw(){
  background(65,185,245);
  sierpinski(50,600,550);
}
public void mouseDragged(){
  //optional
}
public void sierpinski(int x, int y, int len) {
  if(len <= 20) {
    fill((int)(Math.random()*245), (int)(Math.random()*176), (int)(Math.random()*78));
    triangle(x, y, x+len, y, x+(len/2), y-len);
  } 
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }  
}
