class AutoE extends Auto{
 
  color c = color(0, random(50,255), 0);
  float vx = 2*velx;
  int i = 1;
  
  AutoE(){
   super(); 
   super.posy = 2*height/3;
  }
  
   void display(){
   fill(c);
   rect(posx,posy,w,h);
   fill(0);
   ellipse(posx+(w/3), posy+h, h/2, h/2);
   ellipse(posx+(2*w/3), posy+h, h/2, h/2);
   if(i == 1){
     fill(255,255,0);
     triangle(posx+w/2, posy-30, posx+15, posy, posx+w/2, posy);
   }
 }
  
  void move(){
   posx += vx;
   if(posx >= width){
    posx = 0;
    i = -i;
   }
  }
  
  void run(){
   display();
   move();
  }
  
}
