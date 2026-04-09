PImage pusheen;
boolean pusheenvisible;


color cherrychiffon = #FCDFE5;

void setup() {
  size(600, 600);
  background(255);
  pusheen = loadImage("sleepypusheen.png");
  
  
}


void draw() {
  fill(255);
  
  //pusheen button
  tactile(20, 20, 100, 100);
  strokeWeight(3);
  rect(20, 20, 100, 100);
  image(pusheen, 20, 20, 100, 100);
  
  
}




void mouseDragged() {
  if (
  
  
  //draw line
  strokeWeight(3);
  stroke(0);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  
  
}




void tactile(int x, int y, int w, int h) {
   if(mouseX > x && mouseX < x+w && mouseY > y && mouseY <y+h) {
     fill(cherrychiffon);
   } else {
     fill(255);
   }
}


void pusheenvisibility () {
    
  
  
  
}
