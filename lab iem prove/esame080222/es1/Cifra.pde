class Cifra{

  float posx, posy, vely;
  int num;
  
  Cifra(){
   posx = random(width);
   posy = height/4;
   vely = random(2,10);
   num = int(random(0,9));
  }
  
  void display(){
    fill(255,255,0);
    textSize(32);
    text(num,posx,posy);
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
