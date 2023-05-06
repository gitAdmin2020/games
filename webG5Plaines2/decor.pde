
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


void eventsWin2(String label){
  float h=100;
  //String label="test Text";
  float txOfs;
  float ts=18;
  //if (
  float x,y;  
  x=300;
  fill(255,255,255,220);
  rect(x,height/2-h/2-100,width-x*2,h,10);
  
  fill(55,55,55,255);  
  textSize(ts);
  txOfs=textWidth(label);
  text(label,width/2-txOfs/2,height/2+ts/4-100);
  
  textSize(12);
  
}

/////////////////////////////////////////////////
/////////////////////////////////////////////////
/////////////////////////////////////////////////
  void drawBG(){
    
      
   background(175,230,244);
   
   float elWidth=width*2;
   float elHeight=height/2;
   float elX=width/2;
   float elY=0;
   
   noStroke();
   
   fill(255,255,255,100);
   float elOfs=-20;
   
   for (int i=0; i<6;i++){
   elY=elOfs*i;  
   ellipse(elX,elY,elWidth,elHeight);
   ellipse(elX,height-elY,elWidth,elHeight);
   }
   
   elY=height;
   elOfs=20;
   
   for (int i=0; i<6;i++){
   //elY=-1*elOfs*i;  
   //ellipse(elX,elY,elWidth,elHeight);
   }
    
  }
  
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

//////////////////////////////////////////////////////
//////////////////////////////////////////////////////


//////////////////////////////////////////////////////
//////////////////////////////////////////////////////


void drawSimleLines(){
  
   
    for (int i=0;i<height/4+1;i++){
      stroke(255,255,255,100);
      strokeWeight(2);
      line(0,i*4,width,i*4);      
    }
    
}

/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
/////////////////////////////////////////////// 
/*
class loadingGif{
  
  float u=0, u2=0.05;
  float x, y;
  float r=30;
  float d=10;
  float cl=color(255);
  
  public void loadingIni(){
    x=width/2;
    y=height/2;
  }
  
  void drawLoading(){
  strokeWeight(1);
  stroke(0); 
  fill(255);
  
  pushMatrix();
  translate(x,y);
  rotate(u2);
  
  u2+=0.05;
  
  for (int i=0; i<8; i++){
   
    u=PI/4;
    
    rotate(u);
    //noStroke();
    ellipse(r,r,d,d);
    
  }  
  popMatrix();
    
  }
  
}

*/
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
       starsY[i]=0;
       starsX[i]=random(width);
       sZ[i]=random(10,80);
     }
   } 
   
 }
  }
  
////////////////////// ////////////////////// 
