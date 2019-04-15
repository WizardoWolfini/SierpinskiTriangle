int maxtri = 9;
boolean changeColor = false;
STriangle MasterTriangle;
boolean toggle = true;
public boolean increase = false;
float multiplier = 1;
public void setup()
{
  noFill();
  background(255);
  size(1200, 1200);
  MasterTriangle = new STriangle(600, 150, 900, 0);
  maxtri = 6;
}
public void draw()
{
  background(255);
  MasterTriangle.move();
  if (increase) {
    MasterTriangle.seperate();
    multiplier += .05;
  } else {
    multiplier = 1;
    MasterTriangle.moveBack();
  }
}
public void mousePressed()
{
  increase = true;
}
public void mouseReleased() {
  increase = false;
}
public void keyPressed() {
  if (key == 'w') {
    if (maxtri < 9) {
      maxtri++;
    }
  }
  if (key == 's') {
    if (maxtri > 1) {
      maxtri--;
    }
  }
  if (key == 'e') {
    if (toggle) {
      changeColor = !changeColor;
      toggle = false;
    }
  }
}
public void keyReleased() {
  if (key == 'e') {
    toggle = true;
  }
}
