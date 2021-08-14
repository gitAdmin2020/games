
/////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

void eventsWin(String label){
  float h=100;
  //String label="test Text";
  float txOfs;
  float ts=18;
  
  float x,y;  
  x=20;
  
  fill(255,255,255,220);
  rect(x,height/2-h/2-100,width-x*2,h,10);
  
  fill(55,55,55,255);  
  textSize(ts);
  txOfs=textWidth(label);
  text(label,width/2-txOfs/2,height/2+ts/4-100);
  
  textSize(12);
  
}

///////////////////////////////////////////////////////

 void drTitle(String lb, float top, color cl, float ts, boolean shade, boolean xActive, float left) {
  
    textSize(ts);
  
  float ofs=textWidth(lb)/2;
  if (shade){    
  fill(0,0,0,100);
  if (xActive){
  text(lb,left+2,top+2);    
  } else {    
  text(lb,width/2-ofs+2,top+2);
  }
  }
  
  fill(cl);
  
  if (xActive){
  text(lb,left,top);  
  } else {
  text(lb,width/2-ofs,top);
  }
  
  textSize(12);
}


////////////////////// stars ////////////////////////
////////////////////// stars ////////////////////////
////////////////////// stars ////////////////////////

////////////////////// stars ////////////////////////
////////////////////// stars ////////////////////////

class stars{
  
  float []starsX;
  float []starsY;
  float []starSpd;
  float []sZ;
  int hm=50;
  
void  starsIni(){
  
   starsX=new float[hm];
   starsY=new float[hm];
   starSpd=new float[hm];
   sZ=new float[hm];
  
  for (int i=0; i<hm;i++){
    //point(random(width),random(height));
    starsX[i]=random(width);
    starsY[i]=random(height);
    starSpd[i]=random(0.1,5);
    sZ[i]=random(10,80);
    
  }
  
}


void dRaw(){
  
  fill(255,255,255,120);
  stroke(255,255,255,100);
  strokeWeight(10);
  
  for (int i=0; i<hm;i++){
     
     //point(starsX[i],starsY[i]);
     float sz=sZ[i];
     strokeWeight(sZ[i]/10);
     rect(starsX[i],starsY[i],sz,sz,5);
     starsY[i]=starsY[i]+(sZ[i]/10);
     if (starsY[i]>height){
       
       starsX[i]=random(width);
       sZ[i]=random(10,80);
       starsY[i]=(-1*sZ[i]);
     }
   } 
   
 }
  }
  
////////////////////// ////////////////////// 
////////////////////// ////////////////////// 
////////////////////// ////////////////////// 

class fallingLamp{
   
float elR=40;
int tmX,tmY;
int i3=0;

  
  fallingLamp(){    
      
  tmX=int(width/elR);
  tmY=int(height/elR);
    
  }
  
  
  void dRaw(){
  
    float y=elR/2;    
    for (int i2=0; i2<tmY+2; i2++){     
    float x=elR/2;
    strokeWeight(1);
    stroke(255,255,255,20);
    
    //if (random(500)>400)
    if (i2==i3)
    fill(255,255,255,220);
    else 
    fill(255,255,255,(i3*10));
    
    if (i2+1==i3)
    fill(255,255,255,120);
    
     if (i2-1==i3)
    fill(255,255,255,180);
    
      if (i2-2==i3)
    fill(255,255,255,120);
    
      if (i2-3==i3)
    fill(55,55,55,80);
    
      if (i2+4==i3)
    fill(55,55,55,80);
    
       if (i2+8==i3)
    fill(55,55,55,80);
    
  for (int i=0; i<tmX+1; i++){
    
    ellipse(x,y,elR/2,elR/2);
    ellipse(x,y,elR/4,elR/4);
    x=x+elR;    
    }
    y=y+elR;
    
    
  }
  
  if (frameCount % 1==0){
  if (i3<tmY+10)i3=i3+1;
  else
  i3=-10;
  }
  
    
    
  }
  
}


///////////////////
