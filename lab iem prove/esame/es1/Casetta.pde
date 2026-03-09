class Casetta extends Casa{
  
  Casetta(){
  super(); 
 }
 
  void display(){
   noFill();
   stroke(255);
   strokeWeight(2);
   rect(posx,posy,30,30);
   triangle(posx,posy,posx+15,posy-10,posx+30,posy);
   fill(255);
   rect(posx+13,posy+20,5,10);
 }
 
 void move(){
   posx -= velx;
   if(posx <= 0){
    posx = width; 
   }
 }
 
 void run(){
  display();
  move();
 }
 
}
