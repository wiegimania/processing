// setup 
int w = 400;
int h = 400;
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
  
  // put some rss data on the screen
  xml = loadXML("http://blog.firstsquare.de/feed");
  XML[] children = xml.getChildren("channel/item");
  String headline = children[int(random(children.length))].getChild("title").getContent();
  fill(255);
  text(headline, 50, 50);
}

