class Auto{
 float posx, posy, velx, w, h;
 
 Auto(){
  posx = random(width);
  posy = height/3;
  w = 60;
  h = 30;
  velx = random(2,10);
 }
 
 void display(){
  fill(0,255,0);
  rect(posx,posy,w,h);
 }
 
 void move(){
  posx += velx;
  if(posx >= width){
    posx = 0;
  }
 }
 
 void run(){
  display();
  move();
 }
 
 
}
