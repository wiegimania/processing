// image
PImage img;
// pattern
int pattern = 50; 

// setup 
void setup() {
  // application size
  size(800, 800);
  // load image 
  img = loadImage("wiegi2.png");
  // bg color -> random image color
  background(img.get(int(random(width)), int(random(height))));
  // place random img parts
  for (int x = 0; x < width; x += pattern) {
    for (int y = 0; y < width; y += pattern) {
      PImage imgPart = img.get(int(random(width)), int(random(height)), pattern, pattern);
      image(imgPart, x, y);
    }
  }
  
  // birthday bubbles ...
  int[] b_color = { color(int(random(255)),255,255), color(255,int(random(255)),255), color(255,255,int(random(255))) };
  int[] b_x = { int(random(500)), int(random(500)), int(random(500)) };
  int[] b_y = { int(random(100)), int(random(300)), int(random(800)) };
  int[] b_size = { int(random(100)), int(random(200)), int(random(300)) };
  int[] b_data = { 16, 02, 2015 }; 
  
  for (int i = 0; i < 3; ++i) {
    fill(color(b_color[i]));
    ellipse(b_x[i], b_y[i], b_size[i], b_size[i]);
    fill(color(0,0,0));
    text(b_data[i], b_x[i], b_y[i]); 
    fill(color(255,255,255));
    text(b_data[i], (b_x[i] + 1), (b_y[i] + 1)); 
  }
}
 
