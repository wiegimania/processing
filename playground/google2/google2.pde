// global vars
PImage img; 
int w = 600;
int h = 300;
String myVenue = "Karlsruhe,Deutschland";

// setup 
void setup() {
  noStroke();
  noLoop();
  size(w, h);
}

void draw() {
  // load image
  String GoogleImg = "http://maps.googleapis.com/maps/api/staticmap?center=" + myVenue + "&zoom=13&size=600x300&maptype=roadmap&sensor=false";
  img = loadImage(GoogleImg, "png");
  
//background(img.get(int(random(width)), int(random(height))));
  for (int x = 0; x <= img.width; ++x) {
    for (int y = 0; y <= img.width; ++y) {
      fill(img.get (x, y));
      rect(x+random(5), y+random(5), 1, 1);
    }
  }
}

// new image
void mousePressed() {
  redraw();
}

// save png
void keyPressed() {
    if (key == 'p') {
      saveFrame("google-map-#####.png");
    }
}
