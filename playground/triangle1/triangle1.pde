// setup 
color c = color(39,173,213);
int triangles = 20;

void setup() {
  // application size
  size(400, 400);
  // outline
  noStroke();
  // loop
  noLoop();
}

void draw() {
  background(50,214,237);
  for (int i = 0; i < triangles; ++i) {
    c = color(39,int(random(100, 200)),213);
    fill(c);//, 100, 100, int(random(255)));
    triangle(int(random(-50,500)), int(random(-50, 500)), int(random(-50, 500)), int(random(-50, 500)), int(random(-50, 500)), int(random(-50, 500)));
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


