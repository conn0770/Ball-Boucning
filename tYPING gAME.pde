float yspeed = 1;
char  c;
float x;
float y;



void setup(){
  size(800,800);
x = random(10,width-10);
y = random(10,height-10);
c = (char) int (random(97,122));
}
  
  void draw(){
   background(255,0,0);
   textSize(100);

    text(c,x,y);
    y = y +yspeed;
    text(yspeed,width/2,height-10);
    if (keyPressed){
   if (key == c){
  y = 0;
   x = random(10,width-10);
   c = (char)int (random(97,122));
  yspeed =yspeed +1;

 }
    }
  if(y>height){
  y=0;
  x =random(10,width-10);
  y =0;
  c = (char)int(random(97,122));
yspeed = yspeed - 1;

}
  }