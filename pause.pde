void pause() {
  textSize(200);
  fill(255);
  text("paused!", width/2, height/2);
}

void pauseclick(){
  if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
    mode = game;
  }
  
}
