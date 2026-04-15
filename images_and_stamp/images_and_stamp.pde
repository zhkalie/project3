PImage pusheen;
boolean pusheenvisible;


color cherrychiffon = #FCDFE5;
color sweetiepink = #FFB5C6;

color red = #FCDCE1;
color yellow = #FFE6BB;
color green = #E9ECCE;
color mint = #CDE9DC;
color blue = #C4DFE5;
color purple = #F0D9EF;

color c;



void setup() {
  size(600, 600);
  background(255);
  pusheen = loadImage("sleepypusheen.png");
  pusheenvisible = false;
  
}


void draw() {
  fill(255);
  
  //pusheen button
  tactile(20, 20, 100, 100);
  strokeWeight(3);
  pusheenvisibility();
  rect(20, 20, 100, 100);
  image(pusheen, 20, 20, 100, 100);
  
  //color buttons 
  strokeWeight(2);
  
  
  fill(red);
  rect(25, 140, 40, 25);
  
  
  fill(yellow);
  rect(75, 140, 40, 25);
  
  
  fill(green);
  rect(25, 175, 40, 25);
  
 
  fill(mint);
  rect(75, 175, 40, 25);
  
   
  fill(blue);
  rect(25, 210, 40, 25);
  
  
  fill(purple);
  rect(75, 210, 40, 25);
  
}




void mouseDragged() {
  if (pusheenvisible == false) {
    //draw line
    strokeWeight(2);
    stroke(c);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    image(pusheen, mouseX, mouseY, 100, 100);
  } 
}

void mouseReleased () {
  if ( mouseX > 20 && mouseX < 120 && mouseY > 0 && mouseY < 120) {
    pusheenvisible = !pusheenvisible;
  } 
}

void mousePressed() {
  if(mouseX > 30 && mouseX < 130 && mouseY > 30 && mouseY < 130) {
    c = red;
  }
  
  if(mouseX > 175 && mouseX < 275 && mouseY > 30 && mouseY < 130) {
    c = yellow;
  }
  
  if(mouseX > 325 && mouseX < 425 && mouseY > 30 && mouseY < 130) {
    c = green;
  } 
  
  if(mouseX > 475 && mouseX < 575 && mouseY > 30 && mouseY < 130) {
    c = mint;
  } 
  
  if(mouseX > 475 && mouseX < 575 && mouseY > 30 && mouseY < 130) {
    c = blue;
  } 
  
  if(mouseX > 475 && mouseX < 575 && mouseY > 30 && mouseY < 130) {
    c = purple;
  } 
}





void tactile(int x, int y, int w, int h) {
   if(mouseX > x && mouseX < x+w && mouseY > y && mouseY <y+h) {
     fill(cherrychiffon);
   } else {
     fill(255);
   }
}

void colortactile (int x, int x1, int y, int y1) {
  if(mouseX > x && mouseX < x1 && mouseY > y && mouseY < y1) {
    stroke(255);
  } else {
    stroke(0);
  }
}


void pusheenvisibility () {
    if (pusheenvisible == true) {
      fill(cherrychiffon);
      stroke(sweetiepink);
      strokeWeight(3);
    } else {
      stroke(0);
      strokeWeight(3);
    }
  
  
}
