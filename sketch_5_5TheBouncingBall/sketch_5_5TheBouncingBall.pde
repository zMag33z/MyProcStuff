float circleX;
float xspeed=5;
float circleY;
float yspeed=5;

void setup(){
size(640,360);

fill(102);
circleX=16;
circleY=16;


}

void draw(){
background(0);

stroke(255);
ellipse(circleX,circleY,32,32);

circleX=circleX+xspeed;
circleY=circleY+yspeed;

if(circleX>625||circleX<16){
  xspeed=xspeed*-1;
  fill(random(75));
}  
  if(circleY>345||circleY<16){
    yspeed=yspeed*-1;
  fill(random(150));
  }
  

}
