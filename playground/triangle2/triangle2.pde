// setup 
color c;
int triangles = 20;
int myPoints = 10;
int myPointSize = 10;
int w = 400;
int h = 400;
int min = -50;
int max = (w + 100);
int space = 10;
int myW, myH, myWo, myHo;
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
 
  // draw bg triangles
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
  
  // draw points
  fill(color(255, 255, 255));
  for (int i = 0; i < myPoints; ++i) {
    fill(255);
    myW = int(random(space, (w - space)));
    myH = int(random(space, (h - space)));
    ellipse(myW, myH, myPointSize, myPointSize);
    
    // connect dots
    stroke(255, 255, 255);
    if (i > 0) {
      line(myWo, myHo, myW, myH);
    }
    
    // add char for dot
    fill(167, 50, 27);
    textSize(8);
    text("W", (myW - 3), (myH + 4));

    // set starting points
    myWo = myW;
    myHo = myH;
    
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
      saveFrame("triangle-grid-#####.png");
    }
}


