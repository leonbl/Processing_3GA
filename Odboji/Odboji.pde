Krogec k1,k2;

void setup() {
  size(500, 300);
  k1 = new Krogec(60,10,10,70);
  k2 = new Krogec(50,100,20,5);
}

void draw() {
  background(100);
  k1.posodobiPolozaj();
  k2.posodobiPolozaj();
  k1.display();
  k2.display();
}

class Krogec {
  float xPos, yPos;
  float xSpeed, ySpeed;
  int xDir = 1, yDir = 1;
  int radius = 50;

  Krogec() {
    xPos = width/2;
    yPos = height/2;
    xSpeed = 4;
    ySpeed = 3;
  }
  
  Krogec(float xP, float yP, float xS, float yS) {
    xPos = xP;
    yPos = yP;
    xSpeed = xS;
    ySpeed = yS;
  }

  void posodobiPolozaj() {
    xPos += xSpeed * xDir;
    yPos += ySpeed * yDir;
    if (yPos > (height-radius/2) || yPos < radius/2) {
      ySpeed *= -1;
    }
    if (xPos > (width - radius/2) || xPos < radius/2) {
      xSpeed *= -1;
    }
  }

  void display() {
    ellipse(xPos, yPos, radius, radius);
  }
}
