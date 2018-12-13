/*
currently this sketch draws white points all over the canvas.
 
 change the values being given to x and y and add a conditional so that
 the white points are only drawn inside the black circle.
 you will have to use the dist() function.
 */

float r = 300;

void setup() {
  size(600, 600);
  background(50);
  fill(0);
  ellipse(width/2, height/2, r, r);
}

void draw() {

  float x = random(0, width);
  float y = random(0, height);
  float d = dist (width/2, height/2, x, y);

  if (d <= r/2) {
    stroke(255);
    point(x, y);
  }
}
