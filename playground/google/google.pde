// global vars
PImage img; 
int w = 600;
int h = 300;
int pattern = 20; 
int rounds = 5;
int myrotate = 10;
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
  
  for(int i = 0; i < rounds; ++i) {
    for (int x = 0; x < width; x += pattern) {
      for (int y = 0; y < width; y += pattern) {
        pushMatrix();
        PImage imgPart = img.get(x, y, pattern, pattern);
        translate(0, 0);
        rotate(radians(random(-myrotate, myrotate)));
        tint(255, int(random(255)));
        image(imgPart, x, y);
        popMatrix();     
      }
    }
  }  
}

// new image
void mousePressed() {
  redraw();
}
 
