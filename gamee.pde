void game() {
  background(b);
  
  stroke(c);
  line(400, 0, 400, 600);
  
    //score
  textSize(80);
  text(ls, 200, 80);
  text(sr, 600, 80);
  if( ls == 5 || sr == 5) {
    mode = gameover;
  }
  
  if(bx < 0) {
    sr++;
    bx = width/2;
    by = height/2;
    timer = 100;
  }
  
  if(bx > 800) {
    ls++;
    bx = width/2;
    by = height/2;
    timer = 100;
    
  }
  
  // draw paddless
  fill(255);
  circle(lx, ly, ld);
  circle(rx, ry, rd);
  
  
  //moving paddles
  if (wk == true) ly = ly - 5;
  if (sk == true) ly = ly + 5;
  
  if(p1 == false) {
    if (uk == true) ry = ry - 5;
    if (dk == true) ry = ry + 5;
  } else {
    if (p1 == true) {
      if (by < ry - 5) {
        ry = ry - 2;
      } else if (by > ry + 5) {
        ry = ry + 2;
      }
    }
  }
  
  //ball
  fill(255);
  circle(bx, by, bd);
  
  //moving ball 
  if(timer <= 0) {
    bx = bx + vx;
    by = by + vy;
  } 
  
  if (by < bd/2 || by > height - bd/2) {
    vy = vy * -1;
  }    
  
  if( dist(lx, ly, bx, by) <ld/2 + bd/2) {
    vx = (bx - lx)/10;
    vy = (by - ly)/10;
  }
  
  if( dist(rx, ry, bx, by) < rd/2 + bd/2) {
    vx = (bx - rx)/10;
    vy = (by - ry)/10;
  }
  
  

  
  
  
  //timer
  textSize(80);
  text(timer, 600, 500);
  timer = timer - 1;
  
  if(timer <= 0) {
    timer = 0;
  }

}

void gameclick(){
  if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600) {
    mode = pause;
  } 
  
  
  
  
  //else {
  //  if ( rs == 5)  {
  //  mode = gameover;
  //} else if ( ls == 5) {
  //  mode = gameover;
  //}
}
