class Ball{
 float posx, posy, vely, r;
 
 Ball(){
  posx = width/3;
  posy = random(height);
  vely = 5;
  r = 40;
 }
 
 void display(){
  fill(255,0,0);
  noStroke();
  ellipseMode(CENTER);
  ellipse(posx,posy,r,r);
 }
 
 void move(){
  posy += vely;
  if(posy > height || posy < 0){
    vely *= -1;
   }
 }
 
 void run(){
   display();
   move();
 }
}
