/*
this sketch draws a repeatedly growing and shrinking ellipse.
 your task is to change the program so that this behavior is
 encapsulated inside a class. 
 
 move all this behavior to a class, then have mouse clicks create
 instances of the class on the screen. use an ArrayList to store
 the instances of the class that you create, and update and display
 all of them in the draw() loop. 
 */

Circle circle;

void setup() {
  size(600, 600);
  circle = new Circle ();
}

void draw() {
  background(150);
  //ellipse(x, y, d, d);
  //if (d > maxSize || d < 0) {
  //  incr = -incr;
  //}
  //d += incr;
  circle.update();
  circle.display();
}

class Circle {
  float d = 0;
  float incr = 2;
  float maxSize = 150;

  Circle () {
  }

  void update() {
    if (d > maxSize || d < 0) {
      incr = -incr;
    }
    d += incr;
  }

  void display() {
    if (mousePressed == true) {
      ellipse(mouseX, mouseY, d, d);
    }
  }
}
