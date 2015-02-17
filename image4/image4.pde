// image
PImage img;
// pattern
int pattern = 30; 
int rounds = 2;
int myrotate = 0;
int mytint = 0;

// setup 
void setup() {
  // application size
  size(800, 800, P3D);
  // outline
  noStroke();
  // loop
  noLoop();
  // load image 
  img = loadImage("../image/wiegi2.png");
  // bg color -> random image color
  background(img.get(0,0));
  for(int i = 0; i < rounds; ++i) {
    for (int x = 0; x < width; x += pattern) {
      for (int y = 0; y < width; y += pattern) {
          pushMatrix();
          PImage imgPart = img.get(x, y, pattern, pattern);          
          
          if (x < 300) {
            x += random(-2,2);
            y += random(-2,2); 
            tint(255, 255);
          } else {  
            myrotate = 5;
            mytint = 255;
            translate(0, 0);
            rotate(radians(random(-myrotate,myrotate)));
            tint(255, random(mytint));            
          }
          
          image(imgPart, x, y);
          popMatrix();        
        
      }
    }
  }
}
