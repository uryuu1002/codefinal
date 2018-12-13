/*
  try to reproduce the 'twinkling stars' effect in the gif.
 you should use the Star class in order to do this.
 think of the starry sky as a group of star objects that 
 change color over time.
 
 if you can't reproduce it exactly, come as close as you can.
 */
int speed = 10;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
}

class Star {
  float x;
  float y;
  float z;

  float life = 255; 


  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }

  void update() {
    ;
    z -= speed;
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
    }

    life -= 2;
  }

  boolean isFar() {
    if (life <= 0) {
      return true;
    } else {
      return false;
    }
  }


  void display() {   
    fill(0, life);
    noStroke();

    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float r = map(z, 0, width, 10, 0);
    ellipse(sx, sy, r, r);
  }
}
