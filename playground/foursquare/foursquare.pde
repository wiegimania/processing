// config
int myWidth = 600; // app width
int myHeight = 600; // app height
String myLocation = "Karlsruhe";  // data location
float myLat = 49.0080848; // data location latitude
float myLng = 8.4037563; // data location longtitude
JSONObject json; // foursquare api json object
JSONObject response; // foursquare response object
JSONArray venues; // foursquare venues array
int[] myData = new int[50]; // local array size
int myDataMaster = 0; // math basic value
int myCircleMin = 20; // min circle size
int myCircleMax = 200; // min circle size

// setup
void setup() {
  // application data
  size(myWidth, myHeight);
  background(255);
  
  // visual setup  
  smooth();
  noLoop();
  noStroke();
  
  // load foursquare data
  json = loadJSONObject("https://api.foursquare.com/v2/venues/search?client_id=M400MD30GR1YVSV5BQHHZN3RDPGLKDD1C0HFV3KS0S1YEGGF&client_secret=I5SC0ZTDAU3PPEG5MWDDDFWIESXL5RUNILALQ3LL0KAQYAGF&v=20140309&limit=50&near=Karlsruhe");
  response = json.getJSONObject("response");
  venues = response.getJSONArray("venues");
  
  // create data array
  for (int i = 0; i < venues.size(); i++) {
    JSONObject tmpVenue = venues.getJSONObject(i);
    JSONObject tmpStats = tmpVenue.getJSONObject("stats");
    int tmpStatsValue = tmpStats.getInt("checkinsCount"); 
    myData[i] = tmpStatsValue;
    
    // largest value for data visualisation
    if (tmpStatsValue > myDataMaster) {
      myDataMaster = tmpStatsValue;
    }
  }
  
}

void draw() {
  // draw circles
  for (int i = 0; i < venues.size(); i++) {  
    fill(color(random(0, 255), random(0, 255), random(0, 255), random(255)));
    int myCircle = myData[i]; //round((myData[i]*100)/myDataMaster);

    // min circle size    
    if (myCircle < myCircleMin) {
      //println(myCircle + " - " + i + "min");
      myCircle = myCircleMin;
    }
    
    // max circle size
    if (myCircle > myCircleMax) {
      //println(myCircle + " - " + i + "max");
      myCircle = myCircleMax;
    }
    
    ellipse(random(myWidth), random((myHeight-50)), myCircle, myCircle);
  }
 
  // location information
  fill(50);  
  textFont(createFont("Rockwell-Bold", 20));
  text(myLocation + " / " + myLat + " / " + myLng, 10, (myHeight - 10));
}

// save image
void keyPressed() {
  if (key == 's') {
    saveFrame("4sq-data-#####.png");
  } 
 
  if (key == 'r') {
    redraw();
  } 
}

