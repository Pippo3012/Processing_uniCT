ArrayList<Casa> c;
ArrayList<Casetta> cs;

void setup(){
 size(500,500);
 c = new ArrayList<Casa>();
 cs = new ArrayList<Casetta>();
}

void draw(){
  background(0);
  for(Casa c1 : c){
   c1.run(); 
  }
  for(Casetta c2: cs){
   c2.run();
  }
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
   setup(); 
  }
}

void mousePressed(){
 if(mouseButton == LEFT){
  c.add(new Casa()); 
 }
  if(mouseButton == RIGHT){
  cs.add(new Casetta()); 
 }
}
