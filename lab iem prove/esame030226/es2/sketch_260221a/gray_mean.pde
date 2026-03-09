PImage gray_mean(PImage I){
  PImage R = I.copy();
  float r,g,b;
  R.loadPixels();
  
  for(int i = 0; i < R.pixels.length; i++){
    
    r = red(R.pixels[i]);
    g = red(R.pixels[i]);
    b = red(R.pixels[i]);
    
    float mean = (r+g+b)/3;
    R.pixels[i] = color(mean); 
  }
  return R;
}

PImage minimo(PImage I, int N){
  PImage R = I.copy();
  PImage tmp;
  int off = N/2;
  float[] tmpF;
  int xs;
  int ys;
  
  for(int x = 0; x < I.width; x++){
   for(int y = 0; y < I.height; y++){
    xs = x - off;
    ys = y - off;
    tmp = I.get(max(0,xs), max(0,ys), min(N, min(N+xs, I.width-xs)), min(N,min(N+ys,I.height-ys)));
    tmp.loadPixels();
    tmpF = new float [tmp.pixels.length];
    
    for(int i = 0; i < tmp.pixels.length; i++){
     tmpF[i] = green(tmp.pixels[i]); 
    }
    R.set(x,y,color(min(tmpF)));
   }
  }
  return R;
}
