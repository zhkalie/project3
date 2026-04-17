//images & stamp functiions
PImage pusheen;
boolean pusheenvisible;

PImage heartie;
boolean heartiev;

//highlight, tactile, etc.
color cherrychiffon = #FCDFE5;
color sweetiepink = #FFB5C6;
color pinksnow = #FFECF1;

//color pallet
color red = #FCDCE1;
color orange = #FFE6BB;
color yellow = #F2F0C6;
color green = #CDE9DC;
color blue = #C4DFE5;
color purple = #F0D9EF;
color black = #000000;
color white = #FFFFFF;

//color variable
color c;

//slider variables
float slidery;
float size;
 

void setup() {
  size(700, 700); //P2D if smoother
  background(255);
  
  //heartie
  heartie = loadImage("pusheen.png");
  heartiev = false;
  
  //pusheen
  pusheen = loadImage("sleepypusheen.png");
  pusheenvisible = false;
  
  //sizeslider
  slidery = 290;
}


void draw() {
  fill(255);
  noStroke();
  fill(pinksnow);
  rect(0, 0, 140, 700);
  
  strokeWeight(2);
  imageMode(CENTER);
  
  //pusheen button
  tactile(20, 20, 100, 100);
  pusheenvisibility();
  rect(20, 20, 100, 100);
  image(pusheen, 70, 70, 100, 100);
  
  //heartie button
  tactile(20, 480, 100, 100);
  heartiev();
  rect(20, 480, 100, 100);
  image(heartie, 70, 530, 100, 100);
 

  //sizeslider
  stroke(black);
  
  size = map(slidery, 290, 390, 2, 50);
  line(70, 290, 70, 390);
  fill(white);
  circle(70, slidery, size);
  
  
  //color indicator
  stroke(black);
  fill(c);
  circle(70, 445, 45);
  
  
  //color buttons 
  
  ctactile(25, 140, 40, 25);
  fill(red);
  rect(25, 140, 40, 25);
  
  ctactile(75, 140, 40, 25);
  fill(orange);
  rect(75, 140, 40, 25);
  
  ctactile(25, 175, 40, 25);
  fill(yellow);
  rect(25, 175, 40, 25);
  
  ctactile(75, 175, 40, 25);
  fill(green);
  rect(75, 175, 40, 25);
  
  ctactile(25, 210, 40, 25);
  fill(blue);
  rect(25, 210, 40, 25);
  
  ctactile(75, 210, 40, 25);
  fill(purple);
  rect(75, 210, 40, 25);
  
  ctactile(25, 245, 40, 25);
  fill(black);
  rect(25, 245, 40, 25);
  
  ctactile(75, 245, 40, 25);
  fill(white);
  rect(75, 245, 40, 25);
  
  
  //new, load, save buttons
  ctactile(75, 245, 40, 25);
  fill(white);
  ellipse(70, 603, 70, 25);
  fill(black);
  textSize(20);
  text("new", 53, 610);
  
  
  ctactile(75, 245, 40, 25);
  fill(white);
  ellipse(70, 637, 70, 25);
  fill(black);
  textSize(20);
  text("load", 52, 644);
  
  
  ctactile(75, 245, 40, 25);
  fill(white);
  ellipse(70, 670, 70, 25);
  fill(black);
  textSize(20);
  text("save", 52, 675); 
  
  
}



void mouseDragged() {
  if(pusheenvisible) {
    image(pusheen, mouseX, mouseY, size*10, size*10);
  } else if (heartiev) {
    image(heartie, mouseX, mouseY, size*10, size*10);
  } else {
    stroke(c);
    strokeWeight(size);
    line(pmouseX, pmouseY, mouseX, mouseY);
    
  }
  //sizeslider
  slider();
}

void mouseReleased () {
  if ( mouseX > 20 && mouseX < 120 && mouseY > 20 && mouseY < 120) {
    pusheenvisible = !pusheenvisible;
  } 

  //20, 480, 100, 100
  if ( mouseX > 20 && mouseX < 120 && mouseY > 480 && mouseY < 580) { 
    heartiev = !heartiev;
  } 
  //sizeslider
  slider();
}

void mousePressed() { 
  
  //-----just for dots
  if(pusheenvisible) {
    image(pusheen, mouseX, mouseY, size*10, size*10);
  } else if (heartiev) {
    image(heartie, mouseX, mouseY, size*10, size*10);
  } else {
    stroke(c);
    strokeWeight(2);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  //---- just for dots
  
  
  //button functions!!
  //25, 140, 40, 25
  if(mouseX > 25 && mouseX < 65 && mouseY > 140 && mouseY < 165) {
    c = red;
  }
  
  //75, 140, 40, 25
  if(mouseX > 75 && mouseX < 115 && mouseY > 140 && mouseY < 165) {
    c = orange;
  }
  
  //25, 175, 40, 25
  if(mouseX > 25 && mouseX < 65 && mouseY > 175 && mouseY < 200) {
    c = yellow;
  } 
  
  //75, 175, 40, 25
  if(mouseX > 75 && mouseX < 115 && mouseY > 175 && mouseY < 200) {
    c = green;
  } 
  
  //25, 210, 40, 25
  if(mouseX > 25 && mouseX < 65 && mouseY > 210 && mouseY < 235) {
    c = blue;
  } 
  
  //75, 210, 40, 25
  if(mouseX > 75 && mouseX < 115 && mouseY > 210 && mouseY < 235) {
    c = purple;
  } 
  
  //25, 245, 40, 25
  if(mouseX > 25 && mouseX < 65 && mouseY > 245 && mouseY < 270) {
    c = black;
  } 
  
  //75, 245, 40, 25
  if(mouseX > 75 && mouseX < 115 && mouseY > 245 && mouseY < 270) {
    c = white;
  } 
  
  //new button
  if(dist(70, 603, mouseX, mouseY) < ) {
    c = white;
  }
  
  
  
  
 
}





void tactile(int x, int y, int w, int h) {
   if(mouseX > x && mouseX < x+w && mouseY > y && mouseY <y+h) {
     fill(cherrychiffon);
   } else {
     fill(255);
   }
}

void ctactile(int x, int y, int w, int h) {
   if(mouseX > x && mouseX < x+w && mouseY > y && mouseY <y+h) {
     stroke(cherrychiffon);
   } else {
     stroke(black);
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


void heartiev () {
    if (heartiev == true) {
      fill(cherrychiffon);
      stroke(sweetiepink);
      strokeWeight(3);
    } else {
      stroke(0);
      strokeWeight(3);
    }
}

void slider () {
  //70, 290, 70, 415
  if (mouseX > 50 && mouseX < 90 && mouseY > 290 && mouseY < 390) {
    slidery = mouseY;
  }
}
