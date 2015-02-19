// setup 
color c = color(39,173,213);
int triangles = 20;
int w = 400;
int h = 400;
int min = -50;
int max = (w + 100);
XML xml;

void setup() {
  // application size
  size(w, h);
  // outline
  noStroke();
  // loop
  noLoop();
}

void draw() {
  background(50, 214, 237);
  for (int i = 0; i < triangles; ++i) {
    c = color(39, int(random(100, 200)), 213, int(random(255)));
    fill(c);
    triangle(int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)));
  }
  
  // put some rss data on the screen
  xml = loadXML("http://blog.firstsquare.de/feed");
  XML[] children = xml.getChildren("channel/item");
  String headline = children[int(random(children.length))].getChild("title").getContent();
  fill(255);
  text(headline, 50, 50);
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


