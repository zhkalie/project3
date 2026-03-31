//colour pallets

color pinksnow = #FFECF1;
color cherrychiffon = #FCDFE5;
color sweetiepink = #FFB5C6;

color mint = #F5F8EE;
color lightlysalted = #E2E9D4;
color downtobusiness = #63714D;

color white = #FFFFFF;

//variables for colours
color Color;

void setup() {
  size(600, 600);
  strokeWeight(5);
  stroke(downtobusiness);
  
  Color = white;
}

void draw() {
  background(mint);
  
  //highlight! and buttonss!
  if (dist(150, 100, mouseX, mouseY) < 50) {
    stroke(lightlysalted);
  } else {
    stroke(downtobusiness);
  }
  fill(pinksnow);
  circle(150, 100, 100);
  
  if (dist(300, 100, mouseX, mouseY) < 50) {
    stroke(lightlysalted);
  } else {
    stroke(downtobusiness);
  }
  fill(cherrychiffon);
  circle(300, 100, 100);
  

  if (dist(450, 100, mouseX, mouseY) < 50) {
    stroke(lightlysalted);
  } else {
    stroke(downtobusiness);
  }
  fill(sweetiepink);
  circle(450, 100, 100);
  
  //indicatorr
  stroke(downtobusiness);
  fill(Color);
  rect(50, 200, 500, 350);
  
}

void mousePressed () {
  if (dist(150, 100, mouseX, mouseY) < 50) {
    Color = pinksnow;
  }
  
  if (dist(300, 100, mouseX, mouseY) < 50) {
    Color = cherrychiffon;
  }
  
  if (dist(450, 100, mouseX, mouseY) < 50) {
    Color = sweetiepink;
  }
  
 
}
