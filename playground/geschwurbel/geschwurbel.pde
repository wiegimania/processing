import processing.pdf.*;

color c = color(65, int(random(100, 200)), 177, int(random(0, 150)));
float lineLength = 0;
float angle = 0;
float angleSpeed = 1.0;

void setup() {
  // application size
  size(800, 200);
  background(255);
  smooth();
  beginRecord(PDF, "geschwurbel-#####.pdf");
}

void draw() {
  
  if (mousePressed) {
    pushMatrix();
    strokeWeight(1.0);
    noFill();
    stroke(c);
    translate(mouseX, mouseY);
    rotate(radians(angle));
    line(0, 0, lineLength, 0);
    popMatrix();
    
    angle += angleSpeed;
  }
 
}

// new image
void mousePressed() {
  lineLength = random(90, 200);
}

// save image
void keyPressed() {

  if (key == 'p') {
      saveFrame("geschwurbel-#####.png");
  }
  
  if (key == 'f') {
     endRecord();
  }
    
   if (key == 'c') {
     c = color(200, int(random(100, 200)), 50, int(random(255)));
  }

  if (key == 'r') {
     background(255);
     beginRecord(PDF, "geschwurbel-#####.pdf");
     redraw();
  }
}

