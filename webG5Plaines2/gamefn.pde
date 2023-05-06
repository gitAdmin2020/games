 // Croud Mode Game
 
 float perezarYadka=0;
 
 int idx=0;
 
 void playGame(String gamePars){
   
   
   
    try{
    String[] tmpArr =gamePars.split(":",-1);
    
    
     idx=-1;
    
     for (int i=0; i<tmpArr.length;i++){
    
       String[] tmpArr2 =tmpArr[i].split("\\*",-1);   
    
     if (tmpArr2.length>1){
       
       int s=int(tmpArr2[0]);
       int ug=int(tmpArr2[1]);
       int a=int(tmpArr2[2]);
       int w=int(tmpArr2[3]);
       
      ////////////////////////////// 
      ////////////////////////////// 
      // plaine 1
      
      if (i==0 && ug>0)u=u+0.01;
      if (i==0 && ug<0)u=u-0.01;
      /*
      if (y>height)y=0;
      if (y<0)y=height;
      if (x>width)x=0;
      if (x<0)x=width;
      */
      w=1;
      if (i==0 && w==1) {
        x=x+sin(u)*1;
        y=y-cos(u)*1;
       }
       
       /////////////////////
       
    if (i==0 && a>0){
    if (frameCount % 5 == 0){  
     
    //if (pl1bCount<bulletsLimit){  
      
    FCircle b = new FCircle(3);
    b.setPosition(x,y);
    b.setNoStroke();
    b.setVelocity(sin(u)*900, -cos(u)*900);
    b.setName("n1");
    b.setRestitution(1);
    b.setNoStroke();
    b.setFill(55, 255, 55);
    world.add(b);

    pl1bCount++;
   // }
    }  
    
    //perezarYadka--;
       }
       
 ////////////////////////////////////////      
    //////////////////////////////////////// 
    
     // plaine 2
      
      if (i==1 && ug>0)u2=u2+0.01;
      if (i==1 && ug<0)u2=u2-0.01;
     
      // непрерывно летит
     
      w=1;
      if (i==1 && w==1) {
        x2=x2+sin(u2)*1;
        y2=y2-cos(u2)*1;
       }
       
       /////////////////////
       
    if (i==1 && a>0){
    if (frameCount % 5 == 0){  
   //  if (pl2bCount<bulletsLimit){  
    FCircle b = new FCircle(3);
    b.setNoStroke();
    b.setPosition(x2,y2);
    b.setVelocity(sin(u2)*900, -cos(u2)*900);
    b.setName("n2");
    b.setRestitution(1);
    b.setNoStroke();
    b.setFill(255, 255, 255);
    world.add(b);
    pl2bCount++;
    // }

    }  
    
   
       }
     
   ////////////////////////////
    //////////////////////////////////////// 
    
     // plaine 3
      
      if (i==2 && ug>0)u3=u3+0.01;
      if (i==2 && ug<0)u3=u3-0.01;
     
      // непрерывно летит
     
      w=1;
      if (i==2 && w==1) {
        x3=x3+sin(u3)*1;
        y3=y3-cos(u3)*1;
       }
       
       /////////////////////
       
    if (i==2 && a>0){
    if (frameCount % 5 == 0){  
   //  if (pl3bCount<bulletsLimit){ 
    FCircle b = new FCircle(3);
    b.setNoStroke();
    b.setPosition(x3,y3);
    b.setVelocity(sin(u3)*900, -cos(u3)*900);
    b.setName("n3");
    
    b.setRestitution(1);
    b.setNoStroke();
    b.setFill(255, 255, 155);
    world.add(b);
    pl3bCount++;
   //  }

    }    
       }
     
   ////////////////////////////    
    
    //////////////////////////////////////// 
    
     // plaine 4
      
      if (i==3 && ug>0)u4=u4+0.01;
      if (i==3 && ug<0)u4=u4-0.01;
     
      // непрерывно летит
     
      w=1;
      if (i==3 && w==1) {
        x4=x4+sin(u4)*1;
        y4=y4-cos(u4)*1;
       }
       
       /////////////////////
       
    if (i==3 && a>0){
    if (frameCount % 5 == 0){  
 //    if (pl4bCount<bulletsLimit){ 
    FCircle b = new FCircle(3);
    b.setNoStroke();
    b.setPosition(x4,y4);
    b.setVelocity(sin(u4)*900, -cos(u4)*900);
    b.setName("n4");
    
    b.setRestitution(1);
    b.setNoStroke();
    b.setFill(255, 155, 155);
    world.add(b);
    
    pl4bCount++;
    
   //  }

    }    
       }
     
   ////////////////////////////    
       
       
          }
     
     
     
     idx++;
     
              }
    
    
     }

catch( Exception e ){
//если происходить ошибка, которая соответствует классу myException (наследуется от Exception) 
}

  world.draw();
  world.step();

 }
 
 void plaine1Restart(){
   
  plane1.x=width/2;   
  x=width/2;
  y=height-1;
  u=0;
  
  pl1Score=10;
   
 }
 
  void plaine2Restart(){
    
  plane2.x=width/2; 
  x2=width/2;
  y2=1;
  u2=-3.18; 
  
   pl2Score=10;
    
  }
  
   void plaine3Restart(){
     
  x3=plane3.wd;  
  y3=height/2-plane3.wd;
  u3=1.510;
  
   pl3Score=0;
  
   }
 
  void plaine4Restart(){
   
  x4=width-plane4.wd;  
  y4=height/2-plane4.wd;
  u4=-1.510;
  
   pl4Score=0;
     
   }
   
     