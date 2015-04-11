// config
int myWidth = 600;
int myHeight = 600;
String myLocation = "Karlsruhe"; 
float myLat = 49.0080848;
float myLng = 8.4037563;

// setup
void setup() {
  // application size
  size(myWidth, myHeight);
  background(255);
  // visual setup  
  smooth();
  noLoop();
  noStroke();
}

void draw() {
  
  // tmp circle test
  for (int i = 0; i < 100; ++i) {
    fill(color(random(0, 255), random(0, 255), random(0, 255), random(255)));
    ellipse(random(myWidth), random((myHeight-50)), 50, 50);
  }
 
  // location information
  fill(50);  
  textFont(createFont("Rockwell-Bold", 20));
  text(myLocation + " / " + myLat + " / " + myLng, 10, (myHeight - 10));
}

// save image
void keyPressed() {
  if (key == 's') {
      saveFrame("4sq-data-#####.png");
  }  
}

