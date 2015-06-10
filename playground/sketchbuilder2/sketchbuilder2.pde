int appWidth = 600; 
int appHeight = 600;
int patternWidth = 50;
int patternHeight = 50;
int tmpPatternWidth, tmpPatternHeight;
int draw = 0; // initial square painting off
int values[] = {50, 100, 150, 200};

PImage img;
String dataUrl = "data/";

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
    // load image 
    int randomPattern = int(random(1, 5));
    patternWidth = values[int(random(0, 3))];
    patternHeight = values[int(random(0, 3))];
    img = loadImage(dataUrl + "gem-" + randomPattern + ".png");
    image(img, (int(mouseX/patternWidth))*patternWidth, (int(mouseY/patternHeight))*patternHeight, patternWidth, patternHeight);
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

