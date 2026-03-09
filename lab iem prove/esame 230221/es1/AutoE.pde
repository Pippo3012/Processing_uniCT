class AutoE extends Auto{
   color c = color(random(125));
   int i = 1;
  AutoE(){
   super(); 
   super.posy = 2*height/3;
  }
 
 void display(){
  fill(c);
  rect(posx,posy,w,h);
  if(i == 1){
    fill(255,255,0);
    triangle(posx+(w/3), posy, posx+w/2, posy-30, posx+(2*w/3), posy);
  }
 }
 
 void move(){
  posx += velx;
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
