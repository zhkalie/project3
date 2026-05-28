void gameover() {
  success.play();
  
  background(c);
  
  
  if(rs > ls) {
    text("right side wins!", width/2, 200);
  } else if (ls > rs) {
    text("left side wins!", width/2, 200);
  }
 
  text("click anywhere to", 400, 300);
  text("play again!!", 400, 400);
}

void gameoverclick(){
    mode = intro;
    music.rewind();
  
}
