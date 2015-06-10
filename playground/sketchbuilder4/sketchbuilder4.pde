// image
PShape img;
String dataUrl = "data/";
int patternSize = 1; // @tbd dynamic folder size
int patternWidth = 50;
int patternHeight = 50;
int values[] = {50, 100, 150, 200};

void setup() {
  println(patternSize);
  // application size
  size(500, 500);
  background(255);
  smooth();
}

//draw random image on mouseX/mouseY
void draw() { 
  if (mousePressed) {
    // load image 
    int randomPattern = int(random(1, patternSize));
    patternWidth = values[int(random(0, 3))];
    patternHeight = values[int(random(0, 3))];
    img = loadShape(dataUrl + "gem-" + randomPattern + ".svg");
    tint(255, 255, 255, 200);
    shape(img, int(mouseX - (patternWidth/2)), int(mouseY - (patternHeight/2)), patternWidth, patternHeight);
  }
}

// save image
void keyPressed() {
  if (key == 's') {
      saveFrame("gem-#####.png");
  }
}
