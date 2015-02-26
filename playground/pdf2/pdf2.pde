import processing.pdf.*;

// setup 
color c;
int triangles = 20;
int w = 400;
int h = 400;
int min = -50;
int max = (w + 100);
int space = 10;
int myW, myH, myWo, myHo;
PShape img;
PImage displayImg;
String displayName1 = "DANIEL";
String displayName2 = "W";
int myPoints = displayName1.length();
int myPointSize = 10;
int[] dotsX = new int[myPoints];
int[] dotsY = new int[myPoints];

void setup() {
  size(w, h, P3D);
  beginRecord(PDF, "test.pdf");
  noStroke();
  noLoop(); 
  displayImg = loadImage("wiegi2.png");
}

void draw() {
  
  background(160, 213, 216);
 
  // draw bg triangles
  for (int i = 0; i < triangles; ++i) {
    c = color(65, int(random(100, 200)), 177, int(random(255)));
    fill(c);
    triangle(int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)));
  }
  
  // draw lastname first char
  textFont(createFont("Rockwell-Bold", 150));
  fill(255, 255, 255, int(random(100, 200)));
  pushMatrix();
  rotate(radians(int(random(30))));
  text(displayName2, int(random(50)), int(random(50, 100)));
  popMatrix();
    
  // set h15 logo
  img = loadShape("h15_logo.svg");
  tint(255, 255, 255, 200);
  shape(img, space, ((h - 12) - space), 90, 12);
  
  // draw points
  fill(color(255, 255, 255));
  for (int i = 0; i < myPoints; ++i) {
    fill(255);
    myW = getNewDotPosition(1);
    myH = getNewDotPosition(0);
    ellipse(myW, myH, myPointSize, myPointSize);
    
    // connect dots
    stroke(255, 255, 255, 150);
    if (i > 0) {
      line(myWo, myHo, myW, myH);
    }
    
    // set dot x/y
    dotsX[i] = myW - 3;
    dotsY[i] = myH + 3;
    
    // set starting points
    myWo = myW;
    myHo = myH;
    
  }
   
  // add firstname dots
  textFont(createFont("DroidSansMono", 9));
  for (int i = 0; i < dotsY.length; ++i) {
    fill(65, 50, 177, 255);
    text(displayName1.charAt(i), dotsX[i], dotsY[i]);
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

// dots position
int getNewDotPosition(int coord) {
  if(coord == 1) {
    return int(random(space, (w - space)));
  } else {
    return int(random(space, (h - space)));
  }
}  
