

//Created variables
float cntrx,cntry,rcntrx,rcntry;
float xspeed=1;
float yspeed=1;
float rxspeed=1;
float ryspeed=1;
float ohomx,oel1otlx,oel2x,oel3x,oer1x,oer2x,oer3x,otrx,ohomotly,oeloer1y,oel23oer23y,ghgmx,gel2gtlx,gel1x,gel3x,ger2x,ger1x,ger3x,gtrx,gel2ger2y,ghgmy,gel13ger13y,gtlgtry; 
boolean click=false;

void setup(){ 
  size(640,360);
  
//Both Center Points
cntrx=320;
cntry=100;
rcntrx=320;
rcntry=260;

//Orange Pumpkin coordinates
//x coordinates
ohomx=320;
oel1otlx=260;
oel2x=240;
oel3x=280;
oer1x=380;
oer2x=360;
oer3x=400;
otrx=340;
//y coordinates
ohomotly=100;
oeloer1y=40;
oel23oer23y=80;

    //Green Pumpkin Coordinates
    //x coordinates
    ghgmx=320;
    gel2gtlx=260;
    gel1x=240;
    gel3x=280;
    ger2x=380;
    ger1x=360;
    ger3x=400;
    gtrx=340;
    //y coordinates
    gel2ger2y=320;
    ghgmy=260;
    gel13ger13y=280;
    gtlgtry=220;

}

  void draw(){
    
  background(0);
  stroke(248,109,7);
  
  //Center point
  fill(248,109,7);
  ellipse(cntrx,cntry,1,1);
  
  //Orange pumpkin head
  
  fill(248,109,7);
  ellipse(ohomx,ohomotly,400,160);
  
  //Pumpkin eyes
  fill(255,255,0);
  triangle(oel1otlx,oeloer1y,oel2x,oel23oer23y,oel3x,oel23oer23y);
  triangle(oer1x,oeloer1y,oer2x,oel23oer23y,oer3x,oel23oer23y);
  
  //Orange Pumpkin Mouth
  fill(255,255,0);
  arc(ohomx,ohomotly,240,140,0,PI);
  
  //Orange Pumpkin Teeth
  fill(248,109,7);
  rect(oel1otlx,ohomotly,40,40);
  rect(otrx,ohomotly,40,40);

//click reverse other colors  
if(click){
    background(0,0,255);
    stroke(0,255,0);
    
    //Center point
  fill(0,255,0);
  ellipse(rcntrx,rcntry,1,1);

//Green Pumpkin head
fill(0,255,0);
ellipse(ghgmx,ghgmy,400,160);

//Green Pumpkin eyes
fill(255,0,0);
triangle(gel1x,gel13ger13y,gel2gtlx,gel2ger2y,gel3x,gel13ger13y);
triangle(ger1x,gel13ger13y,ger2x,gel2ger2y,ger3x,gel13ger13y);

//Green Pumpkin mouth
fill(255,0,0);
arc(ghgmx,ghgmy,240,140,PI,TWO_PI);

//Green Pumpkin teeth
fill(0,255,0);
rect(gel2gtlx,gtlgtry,40,40);
rect(gtrx,gtlgtry,40,40);
}

 //Orange Move
cntrx=cntrx+xspeed;
cntry=cntry+yspeed;  
  //Xmove
  ohomx=ohomx+xspeed;
  oel1otlx=oel1otlx+xspeed;
  oel2x=oel2x+xspeed;
  oel3x=oel3x+xspeed;
  oer1x=oer1x+xspeed;
  oer2x=oer2x+xspeed;
  oer3x=oer3x+xspeed;
  otrx=otrx+xspeed;
  //Ymove
  ohomotly=ohomotly+yspeed;
  oeloer1y=oeloer1y+yspeed;
  oel23oer23y=oel23oer23y+yspeed;

//Green Move
  rcntrx=rcntrx+rxspeed;
  rcntry=rcntry+ryspeed;
    //x move
    ghgmx=ghgmx+rxspeed;
    gel2gtlx=gel2gtlx+rxspeed;
    gel1x=gel1x+rxspeed;
    gel3x=gel3x+rxspeed;
    ger2x=ger2x+rxspeed;
    ger1x=ger1x+rxspeed;
    ger3x=ger3x+rxspeed;
    gtrx=gtrx+rxspeed;
    //y move
    gel2ger2y=gel2ger2y+ryspeed;
    ghgmy=ghgmy+ryspeed;
    gel13ger13y=gel13ger13y+ryspeed;
    gtlgtry=gtlgtry+ryspeed;

//Green Bounce
if(rcntrx>440||rcntrx<200){
  rxspeed=rxspeed*-1;
}
if(rcntry>280||rcntry<80){
  ryspeed=ryspeed*-1;
}

//orange Bounce
if(cntrx>440||cntrx<200){
  xspeed=xspeed*-1;
}
if(cntry>280||cntry<80){
  yspeed=yspeed*-1;
}

}

//Reverse Pumpkin click

void mousePressed(){
  if(click){click=false;
}
  else {click=true;
}

}
