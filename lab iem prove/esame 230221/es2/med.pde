PImage med(PImage I, int N){
 PImage R = I.copy();
 PImage tmp;
 int off = N/2;
 float[] tmpF;
 int xs;
 int ys;
 float med;
 
 for(int x = 0; x < I.width; x++){
  for(int y = 0; y < I.height; y++){
   xs = x - off;
   ys = y - off;
   tmp = I.get(max(0,xs), max(0,ys), min(N, min(N+xs, I.width-xs)), min(N, min(N+ys, I.height-ys)));
   tmp.loadPixels();
   tmpF = new float[tmp.pixels.length];
   
   for(int i = 0; i < tmp.pixels.length; i++){
     tmpF[i] = green(tmp.pixels[i]);
   }
   tmpF = sort(tmpF);
   int s = tmp.pixels.length;
   if(s%2 == 1){
    med = tmpF[s/2];
   }else{
    med = (tmpF[s/2] + tmpF[s/2-1])/2;
   }
   R.set(x,y,color(med));
  }
 }
 return R;
}
