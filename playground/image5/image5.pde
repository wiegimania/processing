// image
PImage img;
PImage imgOverlay;

// pattern
int pattern = 4; 

// setup 
void setup() {
  // application size
  size(800, 800, P3D);
  // outline
  noStroke();
  // loop
  noLoop();
}

void draw() {
  
  // transparent overlay
  tint(255, 255);  
  imgOverlay = loadImage("../image4/pattern.jpg");
  image(imgOverlay, 0, 0);
  
  // load image 
  img = loadImage("../image/wiegi2.png");
  // bg color -> random image color
  for (int x = 0; x < width; x += pattern) {
    for (int y = 0; y < width; y += pattern) {
      fill (img.get (x, y));
      tint(255, 100);
      ellipse (x, y, pattern, pattern);
      
    }
  }
}


// new image
void mousePressed() {
  redraw();
}
