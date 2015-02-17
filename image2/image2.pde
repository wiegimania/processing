// image
PImage img;
// pattern
int pattern = 5; 

// setup 
void setup() {
  // application size
  size(800, 800, P3D);
  // load image 
  img = loadImage("../image/wiegi2.png");
  // bg color -> random image color
  background(img.get(int(random(width)), int(random(height))));
  for (int x = 0; x < width; x += pattern) {
    for (int y = 0; y < width; y += pattern) {
      fill (img.get (x, y));
      ellipse (x, y, pattern, pattern);
    }
  }
}
 
