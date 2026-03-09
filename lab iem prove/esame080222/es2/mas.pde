PImage massimo(PImage I, int N){
 PImage R = I.copy();
 PImage tmp;
 int off = N/2;
 float[] tmpF = new float[N*N];
 
 for(int x = 0; x < I.width; x++){
  for(int y = 0; y < I.height; y++){
   tmp = I.get(x-off,y-off,N,N);
   tmp.loadPixels();
   
   for(int i = 0; i < tmp.pixels.length; i++){
    tmpF[i] = green(tmp.pixels[i]); 
   }
   R.set(x,y,color(max(tmpF)));
  }
 }
 return R;
}
