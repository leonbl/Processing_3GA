// Ni domače, nadaljuj z vektorji

Krogec[] k;
int stevilo = 4;
void setup() {
  size(500, 300);
  k = new Krogec[stevilo];
  for (int n = 0; n<stevilo; n++) {
    k[n] = new Krogec();
  }
}

void draw() {
  background(100);
  for (int n = 0; n<stevilo; n++) {
    k[n].posodobiPolozaj();
    k[n].display();
  }
}

class Krogec {
  float xPos, yPos;
  float xSpeed, ySpeed;
  int xDir = 1, yDir = 1;
  float rad;

  Krogec() {
    xPos = random(width);
    yPos = random(height);
    xSpeed = random(-10, 10);
    ySpeed = random(-10, 10);
    rad = random(5,80);
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
    if (yPos > (height-rad/2) || yPos < rad/2) {
      ySpeed *= -1;
    }
    if (xPos > (width - rad/2) || xPos < rad/2) {
      xSpeed *= -1;
    }
  }

  void display() {
    ellipse(xPos, yPos, rad, rad);
  }
}
