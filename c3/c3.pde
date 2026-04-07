color sweetiepink = #FFB5C6;


float sliderx;
int x = 0;

void setup () {
  size (600, 600);
  strokeWeight(3);
  stroke(sweetiepink);
  fill(sweetiepink);
  sliderx = 300;
  
}


void draw () {
  background(255);
  
  line(100, 300, 500, 300);
  circle(sliderx, 300, x);
  x = x + 1;
  
}



void mouseDragged () {
 slider();
}

void mouseReleased() {
  slider();
}


void slider () {
  if (mouseX > 100 && mouseX < 500 && mouseY > 275 && mouseY < 325) {
   sliderx = mouseX;
 }
