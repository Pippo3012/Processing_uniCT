class Smile{
 
  float posx, posy, velx, d;
  
   Smile(){
    posx = random(width);
    posy = random(height);
    velx = random(2,10);
    d = 50;
   }
   
   void display(){
     stroke(255,255,0);
     noFill();
     ellipse(posx,posy,d,d);
     line(posx-10,posy,posx-10,posy-20);
     line(posx+10,posy,posx+10,posy-20);
     line(posx-10,posy+15,posx+10,posy+15);
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
