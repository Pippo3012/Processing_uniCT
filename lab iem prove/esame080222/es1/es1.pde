ArrayList<Cifra> c;
ArrayList<Cifrotta> C;

void setup(){
 size(500,500); 
 c = new ArrayList<Cifra>();
 C = new ArrayList<Cifrotta>();
}

void draw(){
 background(0);
 for(Cifra c1: c){
  c1.run(); 
 }
 for(Cifrotta c2 : C){
  c2.run(); 
 }
}

void keyPressed(){
 if(key == '0' || key == '1' || key == '2' || key == '3' || key == '4'){
   c.add(new Cifra());
 }
  if(key == '5' || key == '6' || key == '7' || key == '8' || key == '9'){
   C.add(new Cifrotta());
 }
}

void mousePressed(){
 if(mouseButton == RIGHT){
  setup(); 
 }
}
