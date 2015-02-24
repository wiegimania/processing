// setup 
color c = color(65, 172, 177);
int triangles = 20;
int w = 400;
int h = 400;
int min = -50;
int max = (w + 100);

void setup() {
  // application size
  size(w, h);
  // outline
  noStroke();
  // loop
  noLoop();
}

void draw() {
  background(211, 136, 141);
  for (int i = 0; i < triangles; ++i) {
    c = color(167, int(random(0, 50)), 27, int(random(255)));
    fill(c);
    triangle(int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)));
  }
}

// new image
void mousePressed() {
  redraw();
}

// save image
void keyPressed() {
    if (key == 's') {
      saveFrame("triangle-grid-#####.png");
    }
}


