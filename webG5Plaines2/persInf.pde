boolean persInfoShown=false;
int plevel=1;
int persInfoWinDelay=10;
boolean persLevelActive=true;

void infoPersLevel(int plevel){
   
   color c1=color(36,148,244);
   color c2=color(255,255,0,200); 

   drawManyStripes(c1,c2,false);
   
   fill(255,255,255,255);
   
   String title="Level "+str(plevel)+" Tasks";
   textSize(22);
   float ofs=textWidth(title);
   text(title,width/2- ofs/2,30);
   
   /*
   title="To Be Continued ...";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height-50);
   */
   
   //rect(width/2-instr.width,height/2-430/2-10,width-instr.width/4,430,10);
   //rect(width/2-instr.width,height/2-instr.height/2-10,width-instr.width/2,instr.height,10);
   float xCord=width/2-instr.width;
   rect(xCord,height/2-instr.height/2-10,width-xCord*2,instr.height,10);
   
   fill(36,148,244,100);
   rect(width/2-200,height/2-200-10,400,400,10);
   
   image(instr,width/2-instr.width,height/2-instr.height/2-10);
   
   ///////////////////////////////////////////////////////////////////////
   
   image(pl1Ico, width/2-pl1Ico.width/2,height/2-pl1Ico.height/2-100);
   
   fill(255);
   title="Your Plaine:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2-100-50);
   
   fill(255);
   title="Controls:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2);
   
   fill(255);
   title="Use A-S-X buttons to control";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2+50);
   
   fill(255);
   title="Your task :";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2+90);
   
   title="Enemies must be out of field";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2+140);
   
   
   
   
   // DRAW BUTTON // // DRAW BUTTON // // DRAW BUTTON // // DRAW BUTTON // 
   
   if (persInfoWinDelay>0)persInfoWinDelay--;
   
   if (persInfoWinDelay==0){
   btnStartPers.x=width/2-btnStartPers.w/2;
   
  if(btnStartPers.ButtonDraw()){
     persInfoShown=true;
     persLevelActive=true;
     mode=4;
     pl2shot =false;
     pl3shot=false; 
     pl4shot=false;
   }
   
   }
}

/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

void showPersLevelComleted(String txt,int txSize, boolean txCenterX,boolean txCenterY){
  //popMatrix();
  textAlign(LEFT, CENTER);
  fill(255,255,255,55);
  rect(100,100,width-200,height-200,10);
  textSize(txSize);
  float txOfs=textWidth(txt);
  fill(255,255,255,255);
  text(txt,width/2-txOfs/2,height/2);
  
  image(em2,width/2-em2.width/2,height/2-em2.height/2-50);
  
  btnStartPers.y=height-250;
  
  if(btnStartPers.ButtonDraw()){
     persInfoShown=false;
     persLevelActive=true;
     pl2shot =false;
     pl3shot=false; 
     pl4shot=false;
     
     btnStartPers.y=height-150;
    //mode=4;
   }
  
}