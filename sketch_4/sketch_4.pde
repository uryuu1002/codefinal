/*
this sketch uses an incrementation variable to change the
 color of a rectangle from black to white.
 
 replace the incrementation approach with a color transition
 based on a sin() function for a smoother cycle.
 
 remember that sin() returns a value from -1 to 1.
 */

float incr = 1;
float c = 0;
float a = frameCount * 0.1;

void setup() {
  size(600, 600);
}

void draw() {

  //if (c > 255 || c < 0) {
  //  incr = -incr;
  //}
  //c += incr;
  for (int i = 0; i < 10; i++) {
    float a = (frameCount*0.025 + i*0.1);
    c = map(c, sin(a+i/-1), sin(a+i), 0, 255);
    fill(c);
    rect(100, 100, 400, 400);
  }
}
