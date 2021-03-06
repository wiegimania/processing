import processing.pdf.*;

/* @pjs font="DroidSansMono.ttf"; */

// setup 
color c;
int triangles = 20;
int myPointSize = 10;
int w = 400;
int h = 400;
int min = -50;
int max = (w + 100);
int space = 10;
int myW, myH, myWo, myHo;
PShape img, imgChar;
String displayName1 = "DANIEL";
String displayName2 = "W";
int myPoints = displayName1.length();
int[] dotsX = new int[myPoints];
int[] dotsY = new int[myPoints];

void setup() {
  size(w, h);
  beginRecord(PDF, "test.pdf");
  textFont(createFont("DroidSansMono", 100));
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
  
  // draw lastname first char
  fill(255, 255, 255, int(random(50, 150)));
  text(displayName2, 100, 100);
  
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
    dotsY[i] = myH - 3;
    
    // set starting points
    myWo = myW;
    myHo = myH;
    
  }
   
  // add firstname dots
  for (int i = 0; i < dotsY.length; ++i) {
    img = loadShape("Rockwell_Schrift_Test/"+ displayName1.charAt(i) +".svg");
    img.disableStyle();
    fill(65, 50, 177, 255);
    shape(img, dotsX[i], dotsY[i], 6, 6);
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
