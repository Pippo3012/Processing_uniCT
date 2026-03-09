class Drone{
 
  float posx, posy, vely, d;
  
  Drone(){
    posx = random(width);
    posy = 2*height/4;
    vely = random(1,3);
    d = random(40,80);
  }
  
  void display(){
    fill(125);
    rect(posx,posy,d,d);
    strokeWeight(5);
    stroke(255);
line(posx, posy, posx - 10, posy - 10);
    line(posx + d, posy, posx + d + 10, posy - 10);
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
