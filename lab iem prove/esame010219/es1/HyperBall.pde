class HyperBall extends Ball{
  
  
  HyperBall(){
   super(); 
   super.posx = 2*width/3;
  }
  
 void display(){
  if(posx > mouseX - r && posy < mouseY - r){
   fill(random(255), random(255), random(255)); 
  }else
  fill(0,0,255);
  noStroke();
  ellipseMode(CENTER);
  ellipse(posx,posy,r,r);
 }
 
 void move(){
  posy += vely;
  if(posy > height || posy < 0){
    vely *= -1;
   }
 }
 
 void run(){
   display();
   move();
 }
 
}
