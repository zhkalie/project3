void intro() {
  println(mouseX, mouseY);
  background(b);
  
  textSize(150);
  fill(255);
  text("pong!", 400, 180);
  
  //1 player option
  strokeWeight(5);
  stroke(c);
  fill(255);
  rect(250, 400, 200, 100);
  
  textSize(50);
  fill(c);
  text("1 Player!", 250, 400);
  
  
  //2 player option
  strokeWeight(5);
  stroke(c);
  fill(255);
  rect(550, 400, 200, 100);
  
  textSize(50);
  fill(c);
  text("2 Player!", 550, 400);
}

void introclick(){
  if(mouseX > 150 && mouseX < 350 && mouseY > 350 && mouseY < 450) {
    mode = game;
    music.pause();
    music.rewind();
    p1 = true;
  }
  
  if(mouseX > 450 && mouseX < 650 && mouseY > 350 && mouseY < 450) {
    mode = game;
    music.pause();
    music.rewind();
    p1 = false;
  }
}
