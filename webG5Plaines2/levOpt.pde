
void infoLevel(int level){
  

  //background(36,148,244);  
  //text(level,20,20);  
  //background(36,148,244);   
  //drawManyStripes();
   
   color c1=color(36,148,244);
   color c2=color(255,255,0,200); 

   drawManyStripes(c1,c2,false);
   
   fill(255,255,255,255);
   
 
   String title="Level "+str(level)+" Tasks";
   textSize(22);
   float ofs=textWidth(title);
   text(title,width/2- ofs/2,30);
   
   title="To Be Continued ...";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height-50);
   
   //rect(width/2-instr.width,height/2-430/2-10,width-instr.width/4,430,10);
   float xCord=width/2-instr.width;
   rect(xCord,height/2-instr.height/2-10,width-xCord*2,instr.height,10);
   
   fill(36,148,244,100);
   rect(width/2-200,height/2-200-10,400,400,10);
   
   image(instr,width/2-instr.width,height/2-instr.height/2-10);
   
   //image(pl1Ico, width/2-instr.width + instr.width+20,height/2-pl1Ico.height/2);
   ///////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////
   
   if (level==1){
   if (drawResultTime>10 && drawResultTime<100){
   
   image(pl1Ico, width/2-pl1Ico.width/2,height/2-pl1Ico.height/2-100);
   
   fill(255);
   title="Plaine 1";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2);
   
   fill(255);
   title="Attack airplanes";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2+50);
   
   }
   
    if (drawResultTime>110 && drawResultTime<200){
   
   image(pl2Ico, width/2-pl2Ico.width/2,height/2-pl2Ico.height/2-100);
   
   fill(255);
   title="Plaine 2";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2);
   
   fill(255);
   title="Attack airplanes";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2+50);
   
   }
   
   if (drawResultTime>210 && drawResultTime<300){
     image(pl3Ico, width/2-pl3Ico.width/2,height/2-pl3Ico.height/2-100);
   
   fill(255);
   title="Plaine 3";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2);
   
   fill(255);
   title="Attack airplanes";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2+50);
   }
   
   if (drawResultTime>310 && drawResultTime<400){
    image(pl4Ico, width/2-pl4Ico.width/2,height/2-pl4Ico.height/2-100);
   
   fill(255);
   title="Plaine 4";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2);
   
   fill(255);
   title="Attack airplanes";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2+50);
   }
   
   }   
   
  ///////////////////////////////////////////////////////
  
  if (level==2  || level==4 || level==6){
   if (drawResultTime>10 && drawResultTime<100){
   
   image(pl1Ico, width/2-pl1Ico.width/2,height/2-pl1Ico.height/2-100);
   
   fill(255);
   title="Plaine 1";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2);
   
   fill(255);
   title="Defence battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2+50);
   
   }
   
    if (drawResultTime>110 && drawResultTime<200){
   
   image(pl2Ico, width/2-pl2Ico.width/2,height/2-pl2Ico.height/2-100);
   
   fill(255);
   title="Plaine 2";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2);
   
   fill(255);
   title="Attack battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2+50);
   
   }
   
   if (drawResultTime>210 && drawResultTime<300){
     image(pl3Ico, width/2-pl3Ico.width/2,height/2-pl3Ico.height/2-100);
   
   fill(255);
   title="Plaine 3";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2);
   
   fill(255);
   title="Defence battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2+50);
   }
   
   if (drawResultTime>310 && drawResultTime<400){
    image(pl4Ico, width/2-pl4Ico.width/2,height/2-pl4Ico.height/2-100);
   
   fill(255);
   title="Plaine 4";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2);
   
   fill(255);
   title="Attack battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2+50);
   }    
    } 
  
  ///////////////////////////////////////////////////////
  
  if (level==3  || level==5 || level==7){
   if (drawResultTime>10 && drawResultTime<100){
   
   image(pl1Ico, width/2-pl1Ico.width/2,height/2-pl1Ico.height/2-100);
   
   fill(255);
   title="Plaine 1";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2);
   
   fill(255);
   title="Attack battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl1Ico.height/2+50);
   
   }
   
    if (drawResultTime>110 && drawResultTime<200){
   
   image(pl2Ico, width/2-pl2Ico.width/2,height/2-pl2Ico.height/2-100);
   
   fill(255);
   title="Plaine 2";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2);
   
   fill(255);
   title="Defence battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl2Ico.height/2+50);
   
   }
   
   if (drawResultTime>210 && drawResultTime<300){
     image(pl3Ico, width/2-pl3Ico.width/2,height/2-pl3Ico.height/2-100);
   
   fill(255);
   title="Plaine 3";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2);
   
   fill(255);
   title="Attack battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl3Ico.height/2+50);
   }
   
   if (drawResultTime>310 && drawResultTime<400){
    image(pl4Ico, width/2-pl4Ico.width/2,height/2-pl4Ico.height/2-100);
   
   fill(255);
   title="Plaine 4";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2-100-50);
   
   fill(255);
   title="Game task:";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2);
   
   fill(255);
   title="Defence battlecruisers";
   ofs=textWidth(title);
   text(title,width/2- ofs/2,height/2-pl4Ico.height/2+50);
   }    
    } 
  
  ///////////////////////////////////////////////////////
  if (frameCount % 2 == 0){
  if (drawResultTime<401) drawResultTime++;
  }
  
 // if (drawResultTime>400)drawResultTime=0;
 
 if (drawResultTime>400) {
   
   showLevelTasks=true;
   infoWinTime=0;
   
   levelTime=levelTimeMinimum; 
   
   ship1Score=10;
   ship2Score=5;
   ship3Score=5;
   
   ship4Score=10;
   ship5Score=5;
   ship6Score=5;
   
   ship1.y=-200;
   ship2.y=-100;
   ship3.y=-100;
   
   ship4.y=height+250;
   ship5.y=height+200;
   ship6.y=height+200;
   
   ship1box.setPosition(-100,-20);
   ship2box.setPosition(-100,-20);
   ship3box.setPosition(-100,-20);
   ship4box.setPosition(-100,-20);
   ship5box.setPosition(-100,-20);
   ship6box.setPosition(-100,-20);
   
   obstacle.setPosition(width/2, height*2);
   obstacle2.setPosition(width/2, height*2);
   obstacle3.setPosition(width/2, height*2);
   obstacle4.setPosition(width/2, height*2);
   obstacle5.setPosition(width/2, height*2);
   obstacle6.setPosition(width/2, height*2);
   
   endLevel=false; 
   
   
   
 }
  
}