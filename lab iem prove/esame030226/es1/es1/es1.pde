Auto a;
AutoE A;

void setup(){
 size(512,512);
 a = new Auto();
 A = new AutoE();
}

void draw(){
 background(255);
 a.run();
 A.run();
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
