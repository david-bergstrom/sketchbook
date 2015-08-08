int width = 1366;
int height = 1024;

void setup() {
  size(width, height);
  strokeWeight(10);
  background (0,0,0);
}

void mouseMoved() {
  stroke(random(0,255), random(0,255), random(0,255));
  for (int i = 0; i < 10; i++) {
    
    float start = 127 * (mouseX + mouseY) / (height + width);
    
    float red = random(start, 127) + 127;
    float green = random(start, 127) + 127;
    float blue = random(start, 127) + 127;
    stroke(red, green, blue);
    //rect (random(0,width),10, 10, 78);
    ellipse (random(0,width),random(0,height),40,40);    
  }
}

void draw (){

   
  
}

void mousePressed() {
  saveFrame();
}
