class Auto{
  
 float posx, posy, velx, w, h;
 
 Auto(){
  posx = random(width);
  posy = height/3;
  velx = random(2,4);
  w = random(60,200);
  h = w/2;
 }
 
 void display(){
   fill(255,0,0);
   rect(posx,posy,w,h);
   fill(0);
   ellipse(posx+(w/3), posy+h, h/2, h/2);
   ellipse(posx+(2*w/3), posy+h, h/2, h/2);
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
