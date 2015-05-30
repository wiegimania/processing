// setup 
color c;
int triangles = 70;
int w = 300;
int h = 300;
int min = 0;
int max = (w - 40);
int spacer = 39;
int[] r = { 232, 253, 127, 134, 52, 12, 121, 6, 229, 94 };
int[] g = { 80, 240, 193, 191, 170, 128, 69, 123, 22, 182 };
int[] b = { 153, 86, 228, 86, 58, 201, 143, 202, 136, 95 };
int colorSize = (r.length - 1);
int startX = 75;
int startY = 225;
int x2, y2, x3, y3;

void setup() {
  size(w, h);
  noStroke();
  noLoop(); 
}

void draw() {
  
  // background color
  background(255);
 
  // draw  triangles
  for (int i = 0; i < triangles; ++i) {
    // set current triangle color
    int elem = int(random(0, colorSize));
    c = color(r[elem], g[elem], b[elem], random(0, 255));
    fill(c);
    
    // set current triangle coords
    x2 = int(random(min, max));
    y2 = int(random(min, max));
    x3 = int(x2 + random(1, spacer));
    y3 = int(y2 + random(1, spacer));
    triangle(startX, startY, x2, y2, x3, y3);
  }
  
}

// new image
void mousePressed() {
  noStroke(); 
  redraw();
}

// save image
void keyPressed() {
    if (key == 's') {
      saveFrame("ka300-#####.png");
    }
}
