color c = color(255, 255, 0);
int appWidth = 500; 
int appHeight = 500;
int patternWidth = 50;
int patternHeight = 50;

// start app
void setup() {
  // application size
  size(appWidth, appHeight);
  background(255);
  smooth();
}

// nothing to do - wow :)
void draw() { 
  
}

// create square
void mousePressed() {
  println(mouseX, mouseY);
}

// set square colors
void keyPressed() {
  if (key == 'r') {
      c = color(255, 255, 0);
  } else if (key == 'b') {
      c = color(255, 0, 255);
  }
}
