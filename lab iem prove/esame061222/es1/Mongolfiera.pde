class Mongolfiera{
  
 float posx, posy, velx, w, h, d;
 
 Mongolfiera(){
  posx = random(width);
  posy = height/3;
  velx = random(2,10);
  w = 50;
  h = 30;
  d = 70;
 }
 
 void display(){
   fill(0,255,0);
   rect(posx,posy,w,h);
   ellipse(posx+w/2,posy-50,d,d);
   line(posx,posy,posx,posy-h);
   line(posx+w,posy,posx+w,posy-h);
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
