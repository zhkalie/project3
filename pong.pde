//music variables
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables
Minim minim;
AudioPlayer music, success, failure;


//framework
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;

//color variables
color b = #C4DFE5;
color c = #aec9cf;

// float variables
float lx, ly, ld, rx, ry, rd; //for paddles
float bx, by, bd; // for ball
float vx, vy;
float a = random(0, 2*PI);


//1 player
boolean p1;


// key variables
boolean wk, sk , uk, dk;

//score
int sl, sr, timer;

//side variables
int rs, ls;

void setup() {
  size(800, 600);
  mode = intro;
  
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  //start paddles
  lx = 0;
  ly = height/2;
  ld = 200;
  
  rx = width;
  ry = height/2;
  rd = 200;
  
  //start ball
  bx = width/2;
  by = height/2;
  bd = 100;
  
  //ball movement
  vx = 5*sin(a);
  vy = 5*cos(a);
 
  
  //start key variables
  wk = sk = uk = dk = false;
  
  //start score/win 
  sl = 0;
  sr = 0;
  
  //
  timer = 100;
  
  //sides
  
  
  //music
  minim = new Minim(this);
  music = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  
}

void draw() {
  if (mode == intro) {
    intro();
  }else if (mode == game) {
    game();
  }else if (mode == pause) {
    pause();
  }else if (mode == gameover) { 
    gameover();
  }else {
    println("Error: Mode = " + mode);
  }
}
