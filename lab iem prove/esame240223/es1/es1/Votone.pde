class Votone extends Voto{
  
  Votone(){
   super(); 
  }
  
  void display(){
  noFill();
  stroke(255);
  rectMode(CENTER);
  rect(posx,posy,30,30);
  textAlign(CENTER);
  textSize(28);
  text(num,posx,posy+10);
  if(num > 24){
   text("Lode", posx,posy); 
  }
 } 
  
  void run(){
   display(); 
  }
  
}
