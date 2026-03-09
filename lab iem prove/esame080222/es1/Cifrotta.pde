class Cifrotta extends Cifra{
 
  Cifrotta(){
   super(); 
   super.posy = 2*height/3;
  }
  
  void display(){
    fill(255);
    textSize(32);
    textAlign(RADIUS);
    text(num,posx,posy);
    noFill();
    stroke(255);
    ellipse(posx+8,posy-10,32,32);
  }
  
  void move(){
    posy -= vely;
    if(posy <= 0){
     posy = height; 
    }
  }
  
  void run(){
   display();
   move();
  }
  
  
}
