
void setup(){
  size(640,360);
}

  void draw(){
    
  background(0);
  noStroke();
  
  //Pumpkin heads for orange
  fill(248,109,7);
  ellipse(320,100,400,160);
  
  //Pumpkin eyes
  fill(255,255,0);
  triangle(260,40,240,80,280,80);
  triangle(380,40,360,80,400,80);
  
  //Pumpkin Mouth
  fill(255,255,0);
  arc(320,100,240,160,0,PI);
  
  //Pumpkin Teeth
  fill(248,109,7);
  rect(260,100,40,40);
  rect(340,100,40,40);  
}

//Revrse Pumpkin click
void mousePressed(){
background(0,0,255);
noStroke();

//Pumpkin head
fill(0,255,0);
ellipse(320,260,400,160);

//Pumpkin eyes
fill(255,0,0);
triangle(240,280,260,320,280,280);
triangle(360,280,380,320,400,280);

//Pumpkin mouth
fill(255,0,0);
arc(320,260,240,140,PI,TWO_PI);

//PUmpkin teeth
fill(0,255,0);
rect(260,220,40,40);
rect(340,220,40,40);
}
