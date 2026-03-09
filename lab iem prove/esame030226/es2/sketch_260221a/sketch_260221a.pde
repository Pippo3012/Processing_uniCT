PImage I;
int KS = 120;
int N = 4;

void setup(){
 size(512,512);
 I = loadImage("lena.png");
}

void draw(){
 background(I);
 noFill();
 stroke(255,255,0);
 rectMode(CENTER);
 rect(mouseX,mouseY,KS,KS);
}

void mousePressed(){
 if(mouseButton == LEFT){
  
   PImage sezione = I.get(mouseX-KS/2,mouseY-KS/2,KS,KS);
   
   PImage taglio = minimo(sezione,N);
   I.set(mouseX-KS/2,mouseY-KS/2,taglio);
 }
}

void keyPressed(){
 if(key == '+' && KS < 200){
  KS += 5; 
 }
 if(key == '-' && KS > 40){
  KS -= 5; 
 }
 if(key == 'R' || key == 'r'){
  setup(); 
 }
}
