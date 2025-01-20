// Interactive circle that changes color with mouse movement
void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  // Map mouse position to colors
  float r = map(mouseX, 0, width, 0, 255);
  float b = map(mouseY, 0, height, 0, 255);
  
  background(255);
  noStroke();
  fill(r, 100, b);
  ellipse(width/2, height/2, 200, 200);
}
