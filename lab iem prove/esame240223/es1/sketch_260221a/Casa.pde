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
  rectMode(CENTER);
  rect(posx,posy,30,30);
  triangle(posx,posy-30,posx-15,posy-15,posx+15,posy-15);
 }
  
  void move(){
   posx += velx;
   if(posx >= width || posx < 0){
    velx *= -1; 
   }
  }
  
  void run(){
     display();
     move();
  }
}
