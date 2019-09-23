int ballx = 80;
int ydirection = 80;
int xdirection = 80;
int xpos = 80;
int ypos = 80;
int num = 50;
int[] x = new int[num];
int[] y = new int[num];
int xspeed = 4;
int yspeed = 10;

int size = 61;

int ballxx = 300;
int ballyy = 500;

void setup(){
  size(1000,1000);
}

void draw(){
rectMode(CENTER);


fill(#F03C3C);
rect(width/2, height/2,width-50,height-50);

  
  noStroke();
  fill(255, 102);
    for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Add the new values to the beginning of the array
  x[0] = xpos;
  y[0] = ypos;
  // Draw the circles
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], i/2.0, i/2.0);
  }

   fill(#1A0CC4);
ellipse(xpos,ypos,60,60);
   
   
   
   
   
   
   
   
   
   
   
   
   
   if(xpos<60){
     xpos = 60;
   }
   
   if(xpos>940){
     xpos = 940;
   }
   
  if(ypos<60){
     ypos = 60;
   }
   
   if(ypos>940){
     ypos = 940;
   }
   
   
   
   
   
   if(keyPressed) {
   if (key == 'd')  {
    xpos = xpos + 4;
   }
   }
   
   if(keyPressed) {
   if (key == 'a')  {
    xpos = xpos - 4;
   }
   }
    
 if(keyPressed) {
   if (key == 's')  {
    ypos = ypos + 4;
   }
 }
  if (keyPressed) {
   if (key == 'w') {
     ypos = ypos - 4;
   }
 }

 //end of If
fill(#F803FC);
 stroke(#050505);
 ellipse(ballxx,ballyy,size,size);
 
if (ballyy > height-70){
yspeed = yspeed *-1;
} // end of the if ballx
if (ballyy < height-935){
yspeed = yspeed *-1;
} // end of the if ballx
ballyy = ballyy + yspeed;



//if(xpos< ballyy-60){
 //ypos= 100;
//}
  // Shift the values to the right
 
  }








 // end draw
 