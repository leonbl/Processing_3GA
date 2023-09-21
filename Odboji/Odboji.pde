float xPos, yPos;
float xSpeed = 0, ySpeed = -2;

int radius = 50;
void setup(){
  size(500,300);
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  background(100);
  ellipse(xPos, yPos, radius, radius);
  xPos += xSpeed;
  yPos += ySpeed;
  if(yPos > height){
    ySpeed *= -1;
  }
  //println(xPos);
}
  
