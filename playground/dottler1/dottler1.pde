
int delay = 20;

// setup 
void setup() {
  size(800, 800);
  background(255);
  noStroke();
  smooth();  
  //frameRate(12); 
}

void draw() {
  fill(0);
  int size1 = int(random(1,10));
  int size2 = int(random(1,10));
  int size3 = int(random(1,10));
  rect(mouseX - delay, mouseY, size1, size1);
  rect(mouseX - delay, mouseY-delay, size2, size2);
  rect(mouseX - delay, mouseY+delay, size3, size3);
}
