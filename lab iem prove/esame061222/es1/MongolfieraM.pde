class MongolfieraM extends Mongolfiera{
 
  color c = color(random(125));
  float vx = velx/2;
  
  MongolfieraM(){
   super(); 
   super.velx = velx/2;
   super.posy = 2*height/3;
  }
  
   void display(){
   fill(c);
   rect(posx,posy,w,h);
   ellipse(posx+w/2,posy-50,d,d);
   line(posx,posy,posx,posy-h);
   line(posx+w,posy,posx+w,posy-h);
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
