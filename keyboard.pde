void keyPressed () {
  if (key == 'w' || key == 'W') wk = true;
  if (key == 's' || key == 'S') sk = true;
  if (keyCode == UP) uk = true;
  if (keyCode == DOWN) dk = true;
}

void keyReleased () {
  if (key == 'w' || key == 'W') wk = false;
  if (key == 's' || key == 'S') sk = false;
  if (keyCode == UP) uk = false;
  if (keyCode == DOWN) dk = false;
}
