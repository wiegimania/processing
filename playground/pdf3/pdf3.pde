import processing.pdf.*;

// setup 
color c;
int triangles = int(random(5, 30));
int w = 370;
int h = 370;
int min = -50;
int max = (w + 100);
int space = 10;
int myW, myH, myWo, myHo;
PShape img;
int myPointSize = 10;
int startName = 0;
String td_firstname[] = {"MICHAEL", "SASCHA", "ANDREAS", "CORINNA", "SEBASTIAN", "WOLFGANG", "HUBERT", "UWE", "KLARK", "MICHAEL", "THORSTEN", "MARCUS", "PATRIZIA", "CHRISTIAN", "ROLAND", "SASCHA", "SARBACHER", "CARLO", "MANUEL", "OLIVER", "JAN", "VANESSA", "WOLFGANG", "SINAN", "FABIAN", "WOLFGANG", "CHRISTIAN", "KLAUS PETER", "GERD", "HOLGER", "VALENTINO", "JULIA", "CHRISTIAN", "DAVID", "KAI", "FELIX", "DOMINIK", "CORINNA", "ROBERT", "ANDREAS", "KAI", "GERHARD", "MICHAEL", "MARCO", "MARKUS", "LUKAS", "CLEMENS", "VOLKER", "JAN-NIKLAS", "ANDREA", "MARTIN", "STEFAN", "MICHAEL", "JüRGEN", "THILO", "CHRISTOPHER", "MICHAEL", "RAINER", "ALEXANDER", "MANFRED", "GREGOR", "WINFRIED", "JAN"};
String td_lastname[] = {"J", "W", "S", "P", "S", "H", "K", "M", "P", "E", "J", "D", "N", "G", "S", "S", "M", "D", "S", "B", "L", "K", "W", "S", "P", "S", "S", "S", "A", "K", "S", "S", "H", "B", "K", "K", "E", "P", "H", "F", "E", "M", "Z", "C", "G", "W", "R", "K", "B", "L", "T", "M", "G", "T", "G", "K", "D", "D", "B", "H", "G", "F", "S"};
String td_color[] = {"blue", "blue", "blue", "blue", "pink", "blue", "blue", "blue", "yellow", "orange", "green", "blue", "pink", "lightblue", "lightblue", "green", "red", "pink", "green", "blue", "green", "pink", "green", "pink", "blue", "blue", "pink", "green", "red", "yellow", "red", "pink", "pink", "red", "lightblue", "green", "lightblue", "red", "pink", "blue", "blue", "orange", "orange", "pink", "red", "green", "blue", "blue", "pink", "pink", "orange", "red", "red", "blue", "green", "lightblue", "yellow", "green", "red", "orange", "red", "orange", "green"};
String td_pdf[] = {"MICHAEL-J-1211182453", "SASCHA-W-597149042", "ANDREAS-S-1181719137", "CORINNA-P-517324561", "SEBASTIAN-S-495233835", "WOLFGANG-H-358952466", "HUBERT-K-1298368349", "UWE-M-1423311710", "KLARK-P-1283296348", "MICHAEL-E-511332264", "THORSTEN-J-969643084", "MARCUS-D-1252228828", "PATRIZIA-N-863578683", "CHRISTIAN-G-170380593", "ROLAND-S-1189220281", "SASCHA-S-724050792", "SARBACHER-M-324589399", "CARLO-D-738843852", "MANUEL-S-738291518", "OLIVER-B-217276149", "JAN-L-433012169", "VANESSA-K-1245147181", "WOLFGANG-W-768483442", "SINAN-S-1200651332", "FABIAN-P-589657282", "WOLFGANG-S-71253763", "CHRISTIAN-S-363439866", "KLAUS PETER-S-337015912", "GERD-A-617945305", "HOLGER-K-947530791", "VALENTINO-S-481953147", "JULIA-S-821200950", "CHRISTIAN-H-330888988", "DAVID-B-1332533215", "KAI-K-347655140", "FELIX-K-1150401536", "DOMINIK-E-772795231", "CORINNA-P-905261309", "ROBERT-H-62485516", "ANDREAS-F-842625132", "KAI-E-1245333050", "GERHARD-M-146556143", "MICHAEL-Z-28248691", "MARCO-C-476754834", "MARKUS-G-1273395873", "LUKAS-W-1245238277", "CLEMENS-R-874000131", "VOLKER-K-1039686698", "JAN-NIKLAS-B-945253895", "ANDREA-L-1403126565", "MARTIN-T-99471712", "STEFAN-M-135440206", "MICHAEL-G-1047002504", "JüRGEN-T-1068664510", "THILO-G-956641156", "CHRISTOPHER-K-1399553499", "MICHAEL-D-1330153024", "RAINER-D-312848131", "ALEXANDER-B-668587748", "MANFRED-H-830883865", "GREGOR-G-41755694", "WINFRIED-F-239148489", "JAN-S-1287088744"};

int myPoints = td_firstname[startName].length();
int[] dotsX = new int[myPoints];
int[] dotsY = new int[myPoints];

// fonts
String tf_font[] = {"Rockwell-Bold"};
int tf_font_size[] = {350};

// colors
int myColor[];
int b[] = {160, 213, 216, 65, 177, 100, 200};
int p[] = {200, 80, 170, 175, 145, 10, 80};
int r[] = {190, 50, 0, 210, 40, 60, 120};
int o[] = {255, 140, 10, 230, 0, 75, 125};
int y[] = {255, 250, 0, 255, 0, 170, 230};
int g[] = {50, 200, 50, 50, 50, 100, 180};
int l[] = {65, 170, 180, 60, 160, 100, 150};

void setup() {
  size(w, h);
  beginRecord(PDF, td_pdf[startName] + ".pdf");
  noStroke();
  noLoop(); 
}

void draw() {
  
   // set color
   if (td_color[startName] == "blue") {
     myColor = b; 
   } else if (td_color[startName] == "pink") {
     myColor = p;
   } else if (td_color[startName] == "red") {
     myColor = r;
   } else if (td_color[startName] == "orange") {
     myColor = o;
   } else if (td_color[startName] == "yellow") {
     myColor = y;
   } else if (td_color[startName] == "green") {
     myColor = g;
   } else if (td_color[startName] == "lightblue") {
     myColor = l;
   } else {
     // default color on failure is blue
     myColor = b; 
   }

  background(myColor[0], myColor[1], myColor[2]);
 
  // draw bg triangles
  for (int i = 0; i < triangles; ++i) {
    c = color(myColor[3], int(random(myColor[5], myColor[6])), myColor[4], int(random(255)));
    fill(c);
    triangle(int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)), int(random(min, max)));
  }
  
  // draw lastname first char
  int myFont = int(random(0, (tf_font.length)));
  textFont(createFont(tf_font[myFont], tf_font_size[myFont]));
  fill(255, 255, 255, int(random(80, 120)));
  pushMatrix();
  rotate(radians(int(random(-30, 30))));
  text(td_lastname[startName], int(random(50)), int(random(100, 250)));
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
    text(td_firstname[startName].charAt(i), dotsX[i], dotsY[i]);
  }
  
  // save output as pdf
  endRecord();
}

// new image
void mousePressed() {
  beginRecord(PDF, td_pdf[startName] + ".pdf");
  noStroke(); 
  redraw();
}

// next in line...
void keyPressed() {
  if (keyCode == UP) {
    startName++;
    myPoints = td_firstname[startName].length();
    dotsX = new int[myPoints];
    dotsY = new int[myPoints];
  }
}

// dots position
int getNewDotPosition(int coord) {
  if(coord == 1) {
    return int(random(space, (w - space)));
  } else {
    return int(random(space, (h - space)));
  }
}  
