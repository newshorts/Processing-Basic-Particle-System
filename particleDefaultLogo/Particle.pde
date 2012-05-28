class Particle {

  // private vars
  float x, y, xspeed, yspeed, r, d;
  color c;
  float md;
  PVector p;

  Particle() {
    x = random(2, (img.width-1));
    y = random(2, (img.height-1));
    xspeed = int(random(.001, 10));
    yspeed = int(random(.001, 10));
    r = random(1, maxSize);
    c = color(random(50, 254), random(50, 254), random(50, 254), 75);
  }

  void run(color col) {

    c = col;

    x = int(x + xspeed);
    y = int(y + yspeed);

    if (int(x) >= (img.width-1) || int(x) <= 1) {
      xspeed = xspeed * -1;
      x = int(x + xspeed);
    }

    if (int(y) >= (img.height-1) || int(y) <= 1) {
      yspeed = yspeed * -1;
      y = int(y + yspeed);
    }
  }

  void display() {
    fill(c);
    ellipse(x, y, r, r);
  }

  int getLoc() {
    return int(x + y*img.width);
  }
}

