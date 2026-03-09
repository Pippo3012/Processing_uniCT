class Voto{
 
 float posx, posy, velx;
 int num;
 
 Voto(){
   posx = random(width);
   posy = random(height);
   velx = random(2,10);
   num = int(random(18,30));
 }
 
 void display(){
  noFill();
  stroke(255,255,0);
  rectMode(CENTER);
  rect(posx,posy,30,30);
  textAlign(CENTER);
  textSize(28);
  text(num,posx,posy+10);
 }
 
 void move(){
  posx += velx;
  if(posx >= width || posx < 0){
   velx *= -1; 
  }
 }
 
 void run(){
  display();
  move();
 }
  
}
