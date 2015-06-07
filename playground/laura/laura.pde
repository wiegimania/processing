// image
PImage img;
String dataUrl = "data/";
int patternSize = 6; // @tbd dynamic folder size
int patternWidth = 100;
int patternHeight = 100;

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
    println(randomPattern);
    img = loadImage(dataUrl + "pattern-" + randomPattern + ".png");
    // center image on mouseX/mouseY
    image(img, int(mouseX - (patternWidth/2)), int(mouseY - (patternHeight/2)), patternWidth, patternHeight);
  }
}

// save image
void keyPressed() {
  if (key == 'p') {
      saveFrame("laura-#####.png");
  }
}
