import processing.pdf.*;

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
PShape img;

void setup() {
  size(w, h);
  beginRecord(PDF, "test.pdf");
  noStroke();
  noLoop(); 
}

void draw() {
background(160, 213, 216);
 
  // draw bg triangles
  for (int i = 0; i < triangles; ++i) {
    c = color(65, int(random(100, 200)), 177, int(random(255)));
    fill(c);
    triangle(int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)));
  }
  // set h15 logo
  img = loadShape("h15_logo.svg");
  tint(255, 255, 255, 200);
  shape(img, space, ((h - 12) - space), 90, 12);
  
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
    fill(65, 100, 177);
    textSize(8);
    text("W", (myW - 3), (myH + 4));

    // set starting points
    myWo = myW;
    myHo = myH;
    
  }
  // save output as pdf
  endRecord();
}

// new image
void mousePressed() {
  beginRecord(PDF, "test.pdf");
  noStroke(); 
  redraw();
}

