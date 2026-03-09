PImage hash(PImage I,int h, int k){
  PImage R = I.copy();
  R.filter(GRAY);
  
  for(int x = 0; x < I.width; x++){
   for(int y = 0; y < I.height; y++){
     int idx = x + y * I.height;
     
     if(x == h || x == k){
      R.pixels[idx] = color(0); 
     }
     if(y == h || y == k){
      R.pixels[idx] = color(0); 
     }
   }
  }
  return R;
}

PImage mas(PImage I, int n){
  PImage R = I.copy();
  PImage tmp;
  int off = n/2;
  float[] tmpF = new float[n*n];
  
  for(int x = 0; x < I.width; x++){
   for(int y = 0; y < I.height; y++){
    tmp = I.get(x-off, y-off, n, n);
    tmp.loadPixels();
    
    for(int i = 0; i < tmp.pixels.length; i++){
     tmpF[i] = green(tmp.pixels[i]); 
    }
    R.set(x,y,color(max(tmpF)));
   }
  }
  return R;
}
