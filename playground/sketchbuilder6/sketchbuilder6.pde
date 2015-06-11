// image
int appWidth = 1000; 
int appHeight = 1000;
PShape img;
String dataUrl = "data/";
int patternSize = 10; // @tbd dynamic folder size
int patternWidth = 50;
int patternHeight = 50;
int values[] = {50, 100, 150, 200};
int randomPattern = 0;
// tmp storage
int counter = 0;
boolean paintNonGemItem = false;

void setup() {
  // frameRate(15); slow down app
  // application size
  size(appWidth, appHeight);
  background(255);
  smooth();
  noStroke();
}

//draw random image on mouseX/mouseY
void draw() { 
  if (mousePressed) {
    // load image
    counter += 5;
    randomPattern = int(random(1, patternSize));
    
    // we want more gems than other stuff (1-5 = gem)
    if (randomPattern > 5) {
      if(int(counter/patternSize) >= 5) {
        counter = 0;
      } else {
        randomPattern = int(random(1, 5));      
      }
    }
    
    patternWidth = values[int(random(0, 3))];
    patternHeight = patternWidth;
    img = loadShape(dataUrl + "elem-" + randomPattern + ".svg");
    translate(int(mouseX - (patternWidth/2)), int(mouseY - (patternHeight/2)));
    rotate(radians(int(random(-90, 90)))); 
    shape(img, 0, 0, patternWidth, patternHeight);
  }
}

// save image
void keyPressed() {
  if (key == 's') {
      saveFrame("gem-#####.png");
  }
}
