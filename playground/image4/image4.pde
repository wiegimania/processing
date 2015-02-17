// image
PImage img;
PImage imgOverlay;

// pattern
int pattern = 10; 
int myrotate = 0;
int mytint = 150;
int mytintstart = 0;
int mypos = 0;

// setup 
void setup() {
  // application size
  size(800, 800, P3D);
  // outline
  noStroke();
  // loop
  noLoop();
}

void draw() {
    
  // transparent overlay
  tint(255, 255);  
  imgOverlay = loadImage("pattern.jpg");
  image(imgOverlay, 0, 0);
  
  // load image 
  img = loadImage("../image/wiegi2.png");
  // bg color 
  //background(img.get(0,0));
  for (int x = 0; x < width; x += pattern) {
    for (int y = 0; y < width; y += pattern) {
        
      pushMatrix();
        PImage imgPart = img.get(x, y, pattern, pattern);          

        if (x < 300) {
          mytintstart = 100;
          mypos = 2; 
        } else if (x >= 300 && x < 400) {
          myrotate = 5;
          mytintstart = 100;
        } else if (x >= 400 && x < 500) {
          myrotate = 10;
          mytintstart = 50;         
        } else if (x >= 600 && x < 700) {
          myrotate = 15;
          mytintstart = 10;         
        } else {
          myrotate = 20;
        }
                   
        x += int(random(-mypos, mypos));
        y += int(random(-mypos, mypos));
        
        translate(0, 0);
        rotate(radians(random(-myrotate,myrotate)));
        tint(255, random(mytintstart, mytint));            

        image(imgPart, x, y);
        popMatrix();        
      
    }
  } 
}

// new image
void mousePressed() {
  myrotate = 0;
  mytint = 150;
  mytintstart = 0;
  mypos = 0;
  redraw();
}
