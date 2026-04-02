//colour pallet
color silverspoon = #A79C8E;
color reallyrichcocoa = #6B5344;
color whitechocolatefill = #F8ECC9;

color sweettreat = #F1BBBA;
color strawberrymousse = #EB9F9F;
color cashmere = #FDBBB6;
color romanrose = #E6ACB0;


//variable
color c;

void setup () {
  size(600, 600);
  strokeWeight(5);
  stroke(silverspoon);
  
  c = #FFFFFF;
  
}

void draw () {
  background(whitechocolatefill);
  
  
  //highlight and buttonss!
  
  if(mouseX > 30 && mouseX < 130 && mouseY > 30 && mouseY < 130) {
    stroke(silverspoon);
  } else {
    stroke(reallyrichcocoa);
  }
  fill(sweettreat);
  rect(30, 30, 100, 100);
  
  if(mouseX > 175 && mouseX < 275 && mouseY > 30 && mouseY < 130) {
    stroke(silverspoon);
  } else {
    stroke(reallyrichcocoa);
  }
  fill(strawberrymousse);
  rect(175, 30, 100, 100);
  
  if(mouseX > 325 && mouseX < 425 && mouseY > 30 && mouseY < 130) {
    stroke(silverspoon);
  } else {
    stroke(reallyrichcocoa);
  }
  fill(cashmere);
  rect(325, 30, 100, 100);
  
  if(mouseX > 470 && mouseX < 570 && mouseY > 30 && mouseY < 130) {
    stroke(silverspoon);
  } else {
    stroke(reallyrichcocoa);
  }
  fill(romanrose);
  rect(470, 30, 100, 100);
  
  
  //indicator
  stroke(reallyrichcocoa);
  fill(c);
  rect(50, 200, 500, 350);
}


void mousePressed() {
  if(mouseX > 30 && mouseX < 130 && mouseY > 30 && mouseY < 130) {
    c = sweettreat;
  }
  
  if(mouseX > 175 && mouseX < 275 && mouseY > 30 && mouseY < 130) {
    c = strawberrymousse;
  }
  
  if(mouseX > 325 && mouseX < 425 && mouseY > 30 && mouseY < 130) {
    c = cashmere;
  } 
  
  if(mouseX > 475 && mouseX < 575 && mouseY > 30 && mouseY < 130) {
    c = romanrose;
  } 
  
  
  
}
