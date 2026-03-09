class Casetta extends Casa{
   
  Casetta(){
   super(); 
  }
  
   void display(){
  noFill();
  stroke(255);
  rectMode(CENTER);
  rect(posx,posy,30,30);
  triangle(posx,posy-30,posx-15,posy-15,posx+15,posy-15);
  fill(255);
  rect(posx,posy+10,5,10);
 }
  
  void move(){
   posx -= velx;
   if(posx >= width || posx < 0){
    velx *= -1; 
   }
  }
  
  void run(){
     display();
     move();
  }
}
  
