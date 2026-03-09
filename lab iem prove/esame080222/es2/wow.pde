PImage wow(PImage I){
 PImage R = I.copy();
 
 PImage metasup = I.get(0,0,I.width,I.height/2);
 PImage metainf = I.get(0,I.height/2,I.width,I.height);
 
 R.set(0,0,metainf);
 R.set(0,I.height/2,metasup);
 
 for(int x = I.width/2; x < I.width; x++){
  for(int y = I.height/2; y < I.height; y++){
   
    int idx = x + y * I.width;
    
    if(x == y){
     R.pixels[idx] = color(255); 
    }
  }
 }
 return R;
}
