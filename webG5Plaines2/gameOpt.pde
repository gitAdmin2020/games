void healthDraw(){
  pl1Health.infoDraw();
  pl1Health.x=x+10;
  pl1Health.y=y+50;  
  pl1Health.label=str(pl1Score);
  
  pl2Health.infoDraw();
  pl2Health.x=x2+10;
  pl2Health.y=y2+50;  
  pl2Health.label=str(pl2Score);
  
  pl3Health.infoDraw();
  pl3Health.x=x3+10;
  pl3Health.y=y3+50;  
  pl3Health.label=str(pl3Score);
  
  pl4Health.infoDraw();
  pl4Health.x=x4+10;
  pl4Health.y=y4+50;  
  pl4Health.label=str(pl4Score);
  
  //ship1.x
  sh1Health.infoDraw();
  sh1Health.x=ship1.x+10;
  sh1Health.y=ship1.y+50;  
  sh1Health.label=str(ship1Score);
  
   
  
}
void checkScore(){
  
  
  if (pl1Score<-1)  pl1shot=true;
  if (pl2Score<-1)  pl2shot=true;
  if (pl3Score<-1)  pl3shot=true;
  if (pl4Score<-1)  pl4shot=true;
  
  if(pl1shot && pl1Delay==timeRestore) {
    x=-500;
    pl1Delay=0; 
  }
  if (pl1Delay<timeRestore)pl1Delay++;
  if (pl1Delay==timeRestore-1){
    pl1shot=false;
    plaine1Restart();
  }
  
  if(pl2shot && pl2Delay==timeRestore) {
    x2=-500;
    pl2Delay=0; 
  }
  if (pl2Delay<timeRestore)pl2Delay++;
  if (pl2Delay==timeRestore-1){
    pl2shot=false;
    plaine2Restart();
  }
  
  if(pl3shot && pl3Delay==timeRestore) {
    x3=-500;
    pl3Delay=0; 
  }
  if (pl3Delay<timeRestore)pl3Delay++;
  if (pl3Delay==timeRestore-1){
    pl3shot=false;
    plaine3Restart();
  }
  
if(pl4shot && pl4Delay==timeRestore) {
    x4=-500;
    pl4Delay=0; 
  }
  if (pl4Delay<timeRestore)pl4Delay++;
  if (pl4Delay==timeRestore-1){
    pl4shot=false;
    plaine4Restart();
  }
  
  
}

void  backToStage(){

  if (!pl1shot){
      if (y>height)y=0;
      if (y<0)y=height;
      if (x>width)x=0;
      if (x<0)x=width;
  }
  
  if (!pl2shot){
      if (y2>height)y2=0;
      if (y2<0)y2=height;
      if (x2>width)x2=0;
      if (x2<0)x2=width;
  }
  if (!pl3shot){
      if (y3>height)y3=0;
      if (y3<0)y3=height;
      if (x3>width)x3=0;
      if (x3<0)x3=width;
  }
  if (!pl4shot){
      if (y4>height)y4=0;
      if (y4<0)y4=height;
      if (x4>width)x4=0;
      if (x4<0)x4=width;
  }  
      if (y5>height)y5=0;
      if (y5<0)y5=height;
      if (x5>width)x5=0;
      if (x5<0)x5=width;
      
      if (y6>height)y6=0;
      if (y6<0)y6=height;
      if (x6>width)x6=0;
      if (x6<0)x6=width;
      
           

      if (y7>height)y7=0;
      if (y7<0)y7=height;
      if (x7>width)x7=0;
      if (x7<0)x7=width;
      
      if (y8>height)y8=0;
      if (y8<0)y8=height;
      if (x8>width)x8=0;
      if (x8<0)x8=width;
      
} 