PImage wow(PImage I){
  PImage R = I.copy();
  
  PImage metadx = I.get(I.width/2,0,I.width,I.height);
  R.set(0,0,metadx);
  R.set(I.width/2,0,metadx);
  float r,g,b;
  float perc = random(0,1);
  float limite = (I.width*I.height) * perc;
  println(limite);
  
  for(int x = 0; x < I.width; x++){
   for(int y = 0; y < I.height; y++){
    int idx = x + y * I.width;
    
    r = red(R.pixels[idx]);
    g = green(R.pixels[idx]);
    b = blue(R.pixels[idx]);
    
    if(idx < limite){
     R.pixels[idx] = color(255-r,255-g,255-b); 
    }else{
     R.pixels[idx] = color(r,g,0); 
    }
   }
  }
  return R;
}
