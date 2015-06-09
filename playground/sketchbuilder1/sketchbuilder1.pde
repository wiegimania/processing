color c = color(255, 0, 0);
int appWidth = 600; 
int appHeight = 600;
int patternWidth = 50;
int patternHeight = 50;

// start app
void setup() {
  // application size
  size(appWidth, appHeight);
  background(255);
  smooth();
  noStroke();
  
}

// nothing to do - wow :)
void draw() { 
  
}

// create square
void mousePressed() {
  //getSquarePosition(mouseX, mouseY);
  fill(c);
  rect((int(mouseX/patternWidth))*patternWidth, (int(mouseY/patternHeight))*patternHeight, patternWidth, patternHeight);
  
}

// set square colors
void keyPressed() {
  if (key == 'r') {
      c = color(255, 0, 0);
  } else if (key == 'b') {
      c = color(0, 0, 255);
  } else if (key == 'g') {
      c = color(0, 255, 0);
  } else if (key == '1') {
      patternWidth = 50;
      patternHeight = 50;
  } else if (key == '2') {
      patternWidth = 100;
      patternHeight = 50;
  } else if (key == '3') {
      patternWidth = 50;
      patternHeight = 100;
  } else if (key == '4') {
      patternWidth = 200;
      patternHeight = 200;
  }
}

// get position
int getSquarePosition(int myX, int myY) {
  println(c);
  return 1;
}
