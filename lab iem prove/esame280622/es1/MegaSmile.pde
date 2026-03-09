class MegaSmile extends Smile{
  
 MegaSmile(){
  super(); 
 }
 
    void display(){
      pushMatrix();
      translate(posx,posy);
      scale(1.5);
      
     stroke(255);
     noFill();
     ellipse(posx,posy,d,d);
     line(posx-10,posy,posx-10,posy-20);
     line(posx+10,posy,posx+10,posy-20);
     line(posx-10,posy+15,posx+10,posy+15);
     
     popMatrix();
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
