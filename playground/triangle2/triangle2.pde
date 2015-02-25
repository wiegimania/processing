// setup 
color c = color(65, 172, 177);
int triangles = 20;
int w = 400;
int h = 400;
int min = -50;
int max = (w + 100);
int space = 10;
PImage img;

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
  // set h15 logo
  img = loadImage("h15-logo.png");
  tint(255, 255, 255, 200);
  image(img, space, ((h - img.height) - space));
  
  // set visual
  img = loadImage("brille.png");
  tint(211, 136, 141, 100);
  image(img, ((w/2) - (img.width/2)), ((h/2) - (img.height/2)));
  
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


