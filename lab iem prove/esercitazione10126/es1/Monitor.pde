class Monitor{
 
  float posx, posy, velx, w, h;
  color c = color(random(255), random(255), random(255));
  color b = color(random(255), random(255), random(255));
  Monitor(){
   posx = 10;
   posy = 10;
   velx = random(-5,5);
   w = 60; 
   h = w * 9/16; 
  }
  
  void display(){
    stroke(b);
    strokeWeight(5);
    fill(c);
    rect(posx,posy,w,h);
  }
  
  void move(){
    posx += velx;
    if(posx >= width){
     posx = 0; 
    }else if(posx <= 0){
     posx = width; 
    }
  }
  
  void run(){
   display();
   move();
  }
  
}
