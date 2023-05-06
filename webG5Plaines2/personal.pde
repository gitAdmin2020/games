int[] persID;
int[] persLeft;
int[] persRight;
int[] persShoot;
int[] persGo;
int persIdx=0;
int persMax=4;

float[] rTime;
float[] rTimePeriod;
float[] rTimeQuite;
boolean[] plug;
boolean[] plugLeft;



void genGameParsIni(){
  
  persID = new int[12];
  persLeft = new int[12];
  persRight = new int[12];
  persShoot = new int[12];
  persGo = new int[12];
  
  rTime=new float[12];
  rTimePeriod=new float[12];
  rTimeQuite=new float[12];
  
  plugLeft=new boolean[12];
  
  plug=new boolean[12];
  
  
  for (int i=0; i<persMax;i++){
    persID[i]=i;
    persLeft[i]=0;
    persRight[i]=0;
    persShoot[i]=0;
    persGo[i]=0;
    
    rTime[i]=0;
    rTimePeriod[i]=0;
    rTimeQuite[i]=0;
    
    plugLeft[i]=false;    
    plug[i]=false;
    
  }
  
}



void genGamePars(){
 
 //gamePars="5370*1*1*0:5365*-1*1*0:5358*0*1*0:5372*0*1*0:";
    gamePars="";
  for (int i=0; i<persMax;i++){
    persID[i]=i;
    if (persID[i]!=0){
    ////////////////////////////////////////
    
    persLeft[i]=0;
    //persRight[i]=0;
    
    
    if (random(5)>2 &&  rTime[i]==0 && plug[i]==false) {
    plug[i]=true;
    if (random(5)>2){
      plugLeft[i]=true; 
    } else {
      plugLeft[i]=false; 
    }
    rTimePeriod[i]=random(50,500);
    rTimeQuite[i]=rTimePeriod[i]+random(100,500);
    }
    
    if ( plug[i] && rTime[i]<rTimePeriod[i]){
      if (plugLeft[i]){
        persLeft[i]=1;
        //persRight[i]=0;
      }
      else{
       persLeft[i]=-1;
       //persRight[i]=1;
      }
      
    }
    
    rTime[i]++;
    
    if (rTime[i]>rTimeQuite[i]-2)  {
       plug[i]=false;
       persLeft[i]=0;
       //persRight[i]=0;
       //rTime[i]++;
       rTime[i]=0;
    }
    
    
    
    }
    
   // text(rTime[0]+"->"+rTimeQuite[0],100,height-40);
    /////////////////////////////////////////
    

    
    
    ////////////////////////////////////////
   // if (random(10)>9)persLeft[i]=1;
   // else persLeft[i]=0;
    
      //  if (random(10)>9)persRight[i]=1;
      //  else persRight[i]=0;
      if (i!=0){
      if (random(100)>90){
      
      persShoot[i]=1;
      }
      else { persShoot[i]=0; }
      }
    
   // gamePars=gamePars+str(persID[i])+"*"+str(persLeft[i])+"*"+str(persRight[i])+"*"+str(persShoot[i])+"*"+str(persGo[i])+":";
  gamePars=gamePars+str(persID[i])+"*"+str(persLeft[i])+"*"+str(persShoot[i])+"*"+str(persGo[i])+":";
           
  }
 
  //  textSize(18);
  // text(gamePars,20,20);
  
}

void keyPressed(){
  
   // play Personal game  // play Personal game  // play Personal game 
   if (mode==4) {
     
     if (key=='a') persLeft[0]=-1;
     if (key=='s') persLeft[0]=1;
     if (key=='x') persShoot[0]=1;
     
   }
   
}

void keyReleased(){
  
  if (mode==4) {
    
   if (key=='a') persLeft[0]=0; 
   if (key=='s') persLeft[0]=0; 
   if (key=='x') persShoot[0]=0; 
   
  }
  
  
}