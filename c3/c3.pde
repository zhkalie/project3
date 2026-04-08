color sweetiepink = #FFB5C6;


float sliderx;
float size;


void setup () {
  size (600, 600);
  strokeWeight(3);
  stroke(sweetiepink);
  fill(sweetiepink);
  sliderx = 300;
  size = 0;
}


void draw () {
  background(255);
  
  size = map(sliderx, 100, 700, 20, 150);
  
  line(100, 300, 500, 300);
  circle(sliderx, 300, size);
  
  
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
}
