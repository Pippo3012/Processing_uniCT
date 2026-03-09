class DroneS extends Drone{
  
   DroneS(){
     super();
     super.posy = height/3;
   }
   
   void display(){
    fill(255,0,0);
    //rectMode(CENTER);
    rect(posx,posy,d,d);
    strokeWeight(5);
    stroke(255);
    line(posx, posy, posx - 10, posy - 10);
    line(posx + d, posy, posx + d + 10, posy - 10);
    
    line(posx + d/4, posy + d/4, posx + 3*d/4, posy + d/4);
    line(posx + d/2, posy + d/10, posx + d/2, posy + 4*d/10);
  }
  
  void move(){
   posy += vely;
   if(posy >= height){
    posy = 0; 
   }
  }
  
  void run(){
     display(); 
     move();
  }
}
