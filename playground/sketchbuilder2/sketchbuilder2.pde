color c = color(255, 0, 0);
int appWidth = 600; 
int appHeight = 600;
int patternWidth = 50;
int patternHeight = 50;
int tmpPatternWidth, tmpPatternHeight;
int draw = 0; // initial square painting off

// start app
void setup() {
  // application size
  size(appWidth, appHeight);
  background(255);
  smooth();
  noStroke();
  
}

void draw() { 
  if (draw == 1) {
    fill(c);
    rect((int(mouseX/patternWidth))*patternWidth, (int(mouseY/patternHeight))*patternHeight, patternWidth, patternHeight);
  }
}

// create square painting
void mousePressed() {
  draw = 1;
}

// stop square painting
void mouseReleased() {
  draw = 0;
}

// set square colors
void keyPressed() {
  // color
  if (key == 'r') {
      c = color(255, 0, 0);
  } else if (key == 'b') {
      c = color(0, 0, 255);
  } else if (key == 'g') {
      c = color(0, 255, 0);
      
  // size
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
      
  // key control
  } else if (keyCode == UP || keyCode == DOWN) {
      tmpPatternWidth = patternWidth;
      tmpPatternHeight = patternHeight;
      patternWidth = tmpPatternHeight;
      patternHeight = tmpPatternWidth;
  } else if (keyCode == LEFT) {
  } else if (keyCode == RIGHT) {  
  }
}
