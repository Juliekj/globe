PVector yAxis = new PVector(0, 1, 0);
PVector zAxis = new PVector(0, 0, 1);

float rotation = 0;
float angle;

PImage photo;
PShape Jord;
float r = 60;

Jord J = new Jord();
Satelite S = new Satelite();



void setup() {
  size(600, 600, P3D);

  JSONObject j = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=5TTEBX-LD68B8-6NCTUN-4SR7");
  JSONArray positionsJson = j.getJSONArray("positions");

  JSONObject pos1 = positionsJson.getJSONObject(0);
  JSONObject pos2 = positionsJson.getJSONObject(1);

  float sat1Lon = pos1.getFloat("satlongitude");
  float sat1Lat = pos1.getFloat("satlatitude");

  float sat2Lon = pos2.getFloat("satlongitude");
  float sat2Lat = pos2.getFloat("satlatitude");

  J.setup();
}

void draw() {
  clear();


  J.tegnJord();
  S.tegnsSelite();
}
