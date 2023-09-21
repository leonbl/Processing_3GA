float xPos, yPos;
float xSpeed = 4, ySpeed = 3;
int xDir = 1, yDir = 1;
int radius = 50;

void setup(){
  size(500,300);
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  background(100);
  xPos += xSpeed * xDir;
  yPos += ySpeed * yDir;
  if(yPos > height || yPos < 0){
    ySpeed *= -1;
  }
  if(xPos > width || xPos < 0){
    xSpeed *= -1;
  }
  ellipse(xPos, yPos, radius, radius);

  //println(xPos);
}
  
