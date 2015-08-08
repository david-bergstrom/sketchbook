float red;
float green;
float blue;
int steps = 800;
int i = 0;
float r = 100;

float centerX;
float centerY;


// Processing
void setup() {
  size(3840, 2160);
  strokeWeight(1);
  newColors();
  background(red, green, blue);
  newColors();
  newCenter();
}

void draw() {
  if (i++ > steps / 4) {
    i = 0;
    newColors();
    r = random(0, height);
    newCenter();
    saveFrame();
  }
  
  line(0, 0, circleX(0), circleY(0));
  line(width, 0, circleX(PI / 2), circleY(PI / 2));
  line(0, height, circleX(3 * PI / 2), circleY(3 * PI / 2));
  line(width, height, circleX(PI), circleY(PI));
}

// My functions
float circleX(float offset) {
   return centerX - r  * cos(offset + i * TWO_PI / steps);
}

float circleY(float offset) {
   return centerY - r * sin(offset + i * TWO_PI / steps);
}

void newCenter() {
  centerX = random(0, width);
  centerY = random(0, height);
}

int blueLevel = 200;

void newColors() {
   red = random(0, 200);
   green = random(0, 200);
   blue = (blueLevel + random(0, 256 - blueLevel)) / 2;
   stroke(red, green, blue);
}