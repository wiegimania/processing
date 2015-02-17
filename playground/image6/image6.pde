// image
PImage img;
PImage imgOverlay;

// pattern
int pattern = 30; 
int myrotate = 2;
int mytint = 150;
int mytintstart = 100;
int mypos = 2;

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
  imgOverlay = loadImage("../image4/pattern.jpg");
  image(imgOverlay, 0, 0);
  
  // load image 
  img = loadImage("../image/wiegi2.png");
  // bg color 
  //background(img.get(0,0));
  for (int x = 0; x < width; x += pattern) {
    myrotate += 2;    
    for (int y = 0; y < width; y += pattern) {
        
        pushMatrix();
        PImage imgPart = img.get(x, y, pattern, pattern);          

        x += int(random(-mypos, mypos));
        y += int(random(-mypos, mypos));
        
        tint(255, random(mytintstart, mytint));            

        translate(0, 0);
        rotate(radians(myrotate));
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
