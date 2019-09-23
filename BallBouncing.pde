int ballx=50;
int speedx=4;
void setup(){
size(500,500);
} // end set up
void draw(){
background(255,255,0);
rectMode(CENTER);
fill(0,0,255);
rect(width/2, height/2,width-50,height-50);
fill(255,0,0);
ellipse(ballx,height/2, 20,20);
if (ballx > width-35){
speedx = speedx *-1;
} // end of the if ballx
if (ballx <35){
speedx = speedx *-1;
} // end of the if ballx
ballx = ballx + speedx;
} // end draw