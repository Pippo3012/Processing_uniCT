class Casa{
 float posx, posy, velx;
 
 Casa(){
  posx = random(width);
  posy = random(height);
  velx = random(2,10);
 }
 
 void display(){
   noFill();
   stroke(255,255,0);
   strokeWeight(2);
   rect(posx,posy,30,30);
   triangle(posx,posy,posx+15,posy-10,posx+30,posy);
 }
 
 void move(){
   posx += velx;
   if(posx >= width || posx <= 0){
    velx *= -1; 
   }
 }
 
 void run(){
  display();
  move();
 }
 
}
