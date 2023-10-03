void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  stroke(255);
  line(320, 0, 320, height);
  line(width, 180, 0, 180);
  if ((mouseX<320)&&(mouseY<180)) {
    fill(255);
    rect(50, 100, 60, 60);
  }
  else if ((mouseX>320)&&(mouseY<180)) {
    fill(255);
    rect(400, 60, 60, 60);
  }
  if((mouseX>320)&&(mouseY>180)){
    fill(255);
    rect(350, 200, 50, 50);
  }
  else if ((mouseX<320)&&(mouseY>180)) {
    fill(255);
    rect(50,200,50,50);
  }
}
