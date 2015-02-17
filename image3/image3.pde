// image
PImage img;
// pattern
int pattern = 40; 
int rounds = 3;
// setup 
void setup() {
  // application size
  size(800, 800, P3D);
  // outline
  noStroke();
  // loop
  noLoop();
  // load image 
  img = loadImage("../image/wiegi2.png");
  // bg color -> random image color
  background(img.get(0,0));
  for(int i = 0; i < rounds; ++i) {
    for (int x = 0; x < width; x += pattern) {
      for (int y = 0; y < width; y += pattern) {
        pushMatrix();
        PImage imgPart = img.get(x, y, pattern, pattern);
        translate(0, 0);
        rotate(radians(random(-10,10)));
        tint(255, int(random(255)));
        image(imgPart, x, y);
        popMatrix();     
      }
    }
  }
}
