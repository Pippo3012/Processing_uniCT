Monitor m;
OldMonitor M;

void setup(){
  size(512,512);
  m = new Monitor();
  M = new OldMonitor();
}

void draw(){
  background(255);
  m.run();
  M.run();
}

void keyPressed(){
 if(key == 'r' || key == 'R'){
  setup(); 
 }
}
