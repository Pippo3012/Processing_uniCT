class OldMonitor extends Monitor{
 
  float vx = -velx;
  
  OldMonitor(){
    super();
    super.h = w * 3/4;
    super.posy = height - h - 10;
  }
  
    void display(){
    stroke(125);
    strokeWeight(5);
    fill(0,255,0);
    if(mouseX >= posx && mouseX <= posx + w && mouseY >= posy && mouseY <= posy + h){
     fill(0); 
    }
    rect(posx,posy,w,h);
  }
  
  void move(){
    if(mouseX >= posx && mouseX <= posx + w && mouseY >= posy && mouseY <= posy + h){
     vx = 0; 
    }else{
      vx = -velx;
      posx += vx;
      if(posx >= width){
       posx = 0; 
      }else if(posx <= 0){
       posx = width; 
      }
    }
  }
  
  void run(){
   display();
   move();
  }
  
}
