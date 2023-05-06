void gameGraficsIni(){
  
  pl1Delay=timeRestore;
   pl2Delay=timeRestore;
   pl3Delay=timeRestore;
   pl4Delay=timeRestore;
  
  Plaine1img= loadImage("aero/pl1.png");
  
  plane1.gameObjectIni("aero/pl1.png");
  plane2.gameObjectIni("aero/pl2.png");
  plane3.gameObjectIni("aero/pl3.png");
  plane4.gameObjectIni("aero/pl4.png");
  
  // Loading anim Pics
  
   explosion.loadImgArr("/data/ex1/");
   
  // misc and stuff
  
  m1.gameObjectIni("bg/m1.png");
  
  m1.x=width/2-m1.wd/2; 
  m1.y=height/2-m1.ht/2; 
  m1.ShowShadow=false;
  
  /*
  con1.gameObjectIni("bg/con2.png");
  
  con1.x=width/2-m1.wd/2; 
  con1.y=height/2-m1.ht/2; 
  con1.ShowShadow=false;
  fcone1.setPosition(con1.x, con1.y);
  
  con1Sh.gameObjectIni("bg/consh3.png");
  con1Sh.ShowShadow=false;
  */
  // plaines
  
  plane1.x=width/2;  
  
  plane1.wd=80;
  plane1.ht=80;
  
  plane2.wd=80;
  plane2.ht=80;
    
  x=width/2;
  y=height-plane1.ht;
  u=0;
  
  plane2.x=width/2; 
  x2=width/2;
  y2=1;
  u2=-3.18;
    
  x3=plane3.wd;  
  y3=height/2-plane3.wd;
  u3=1.510;
  
  x4=width-plane4.wd;  
  y4=height/2-plane4.wd;
  u4=-1.510;
  
  
  
  
  // !
  
  //fon= loadImage("aero/2.jpg");
  shadow= loadImage("pl4shadow.png");
  ship1sh= loadImage("aero/ship-1sh.png");
  


  
  ship1.gameObjectIni("aero/ship-3.png");
  
  ship1.x=-40+width/2+random(40);
  
  //ship1.y=-2*ship1.wd;
  ship1.y=-200;
  ship1.ShowShadow=false;
  
  
  ship2.gameObjectIni("aero/ship-1.png");
  ship2.x=100+random(100);
  ship2.y=-100;
  ship2.ShowShadow=false;
  
  
  ship3.gameObjectIni("aero/ship-1.png");
  ship3.x=width-100-random(100);
  ship3.y=-100;
  ship3.ShowShadow=false;
  
  
  ship4.gameObjectIni("aero/ship-6.png");
  ship4.x=-40+width/2+random(40);
  ship4.y=height+100;
  ship4.ShowShadow=false;
  
  
  ship5.gameObjectIni("aero/ship-5.png");
  ship5.x=width-100-random(100);
  ship5.y=height+100;
  ship5.ShowShadow=false;
  
  
  ship6.gameObjectIni("aero/ship-5.png");
  ship6.x=100+random(100);
  ship6.y=height+100;
  ship6.ShowShadow=false;
}


float b1,b2;

void  drawTimeBox(float x,float y, int i){
  
 // if (i>0 && i<50 || i>200 && i<250 || i>(levelTimeMinimum-100) && i<(levelTimeMinimum-10)){
  if (i>(levelTimeMinimum-100) || i>0 && i<100 || i>200 && i<250 || i>300 && i<350){
  noStroke();
  
// if (i>300 && i<350 || i>0 && i<100){
 if (i>0 && i<100){
    b1=cos(b2)*100;
    b2+=0.5;
 }
  
  fill(255,255,255,100+b1);
  
  rect(x-40,y-40,30,10);
  rect(x-40,y-40,10,30);
  
  rect(x-40,y+25,30,10);
  rect(x-40,y+5,10,30);
  
  //rect(-10,-10,20,20);
  
  rect(x+50-40,y-40,30,10);
  rect(x+50-20,y-40,10,30);
  
  rect(x+50-40,y+25,30,10);
  rect(x+50-20,y+5,10,30);
  
  fill(255,255,255,100);
  textAlign(LEFT, CENTER);
  textSize(12);
  text(i,x-textWidth(str(i))/2,y-2); 
  
}
  /*
  if (i>0 && i<50){
  text(i,x-textWidth(str(i))/2,y-2);
  }
  
  if (i>200 && i<250){
  text(i,x-textWidth(str(i))/2,y-2);  
  }
  
  if (i>(levelTimeMinimum-100) && i<(levelTimeMinimum-10)){
   text(i,x-textWidth(str(i))/2,y-2);   
  }  
    */
}

void drawPlains(){
  
  
   plane1.drawObject(x, y, u);
   
   plh1.setPosition(x,y);
   plh1.setRotation(u);  
   
   
   /*
   
   plane1.x=x;
   plane1.y=y;
   
   plane2.x=x2;
   plane2.y=y2;
  
   if(plane1.CheckCollision(plane1,plane2) && !explosion.vis){
     explosion.idx=0;
     explosion.x=plane1.x;
     explosion.y=plane1.y;
     explosion.vis=true;
     pl1shot=true;
     pl2shot=true;
   } else {
     //explosion.vis=false; 
   }
   
   explosion.drawFrame(2);
   if (explosion.endFrame)explosion.vis=false; 
  
  */
   
   //idx=1;
   if (idx>1) {
   plane2.drawObject(x2, y2, u2);
   plh2.setPosition(x2,y2);
   plh2.setRotation(u2);
   
   //drawShadow(x2, y2, u2);
   
   } 
   
   if (idx>2) {
   plane3.drawObject(x3, y3, u3);
   plh3.setPosition(x3,y3);
   plh3.setRotation(u3);
   
   //drawShadow(x3, y3, u3);
   
   } 
   
   if (idx>3) {
     
   plane4.drawObject(x4, y4, u4);
   plh4.setPosition(x4,y4);
   plh4.setRotation(u4);   
   //drawShadow(x4, y4, u4);
   
   } 
  
  
}
////////////////////////////////////////// Draw Ships ////////////////////////////////////
void drawShipsBottom1(){
     //////////////////////// SHIP !!!!!!!!!4 /////////////////////////////
   
   image(ship1sh,ship4.x+4, ship4.y-ship1sh.height/2);
   ship4.drawObject(ship4.x, ship4.y, 0); 
   
   if (ship4Score>ship4ScoreLimit)ship4.y-=0.1;
   //if (ship1Score>ship1ScoreLimit)ship1.y+=1;
   
   obstacle4.setPosition(ship4.x,ship4.y);
   ship4box.setPosition(ship4.x,ship4.y);
   
   //////////////////////// SHIP LASER 4 /////////////////////////////
   
  strokeWeight(2);
  stroke(255);
  //obstacle4.setFill(0,0,0,10);
  ArrayList contacts4 = obstacle4.getContacts();
  for (int i4=0; i4<contacts4.size(); i4++) {
    FContact c4 = (FContact)contacts4.get(i4);
    line(c4.getBody1().getX(), c4.getBody1().getY(), c4.getBody2().getX(), c4.getBody2().getY());
  //obstacle.setFill(255,0,0,100);
} 
   
}

void drawShipsBottom2(){
  
}

void drawShipsBottom3(){
  
}

void drawShipsTop1(){
   //////////////////////// SHIP !!!!!!!!!1 /////////////////////////////
   
   image(ship1sh,ship1.x+4, ship1.y-ship1sh.height/2);
   ship1.drawObject(ship1.x, ship1.y, 0); 
   
   if (ship1Score>ship1ScoreLimit)ship1.y+=0.1;
   //if (ship1Score>ship1ScoreLimit)ship1.y+=1;
   
   obstacle.setPosition(ship1.x,ship1.y);
   ship1box.setPosition(ship1.x,ship1.y);
   
   //////////////////////// SHIP !!!!!!!!!1 /////////////////////////////
   //////////////////////// SHIP LASER 1 /////////////////////////////
   
  strokeWeight(2);
  stroke(255);
  obstacle.setFill(0,0,0,10);
  ArrayList contacts = obstacle.getContacts();
  for (int i=0; i<contacts.size(); i++) {
    FContact c = (FContact)contacts.get(i);
    line(c.getBody1().getX(), c.getBody1().getY(), c.getBody2().getX(), c.getBody2().getY());
  //obstacle.setFill(255,0,0,100);
} 

}
void drawShipsTop2(){
  
  /////////////////////// SHIP 2 /////////////////////////////////////////////////////////

   image(ship1sh,ship2.x+4, ship2.y-ship1sh.height/2);
   ship2.drawObject(ship2.x, ship2.y, 0); 
   
   //if (ship2Score>ship2ScoreLimit)
   ship2.y+=0.1;
   
   obstacle2.setPosition(ship2.x,ship2.y);
   ship2box.setPosition(ship2.x,ship2.y);
   
    //////////////////////// SHIP LASER 2 /////////////////////////////
   
  strokeWeight(2);
  stroke(255);
  obstacle2.setFill(0,0,0,10);
  ArrayList contacts2 = obstacle2.getContacts();
  for (int i=0; i<contacts2.size(); i++) {
    FContact c2 = (FContact)contacts2.get(i);
    line(c2.getBody1().getX(), c2.getBody1().getY(), c2.getBody2().getX(), c2.getBody2().getY());
  //obstacle.setFill(255,0,0,100);
} 
   
   
   
   /////////////////////// SHIP 3 /////////////////////////////////////////////////////////

   image(ship1sh,ship3.x+4, ship3.y-ship1sh.height/2);
   ship3.drawObject(ship3.x, ship3.y, 0); 
   
   //if (ship2Score>ship2ScoreLimit)
   ship3.y+=0.1;
   
   obstacle3.setPosition(ship3.x,ship3.y);
   ship3box.setPosition(ship3.x,ship3.y);
   
   //////////////////////// SHIP LASER 3 /////////////////////////////
   
  strokeWeight(2);
  stroke(255);
  obstacle3.setFill(0,0,0,10);
  ArrayList contacts3 = obstacle3.getContacts();
  for (int i=0; i<contacts3.size(); i++) {
    FContact c3 = (FContact)contacts3.get(i);
    line(c3.getBody1().getX(), c3.getBody1().getY(), c3.getBody2().getX(), c3.getBody2().getY());
  //obstacle.setFill(255,0,0,100);
} 
   
   ////////////////////////////////////// ////////////////////////////////////// 
  
}

void drawShipsTop3(){
  
  //////////////////////// SHIP !!!!!!!!!1 /////////////////////////////
   
   image(ship1sh,ship1.x+4, ship1.y-ship1sh.height/2);
   ship1.drawObject(ship1.x, ship1.y, 0); 
   
   if (ship1Score>ship1ScoreLimit)ship1.y+=0.1;
   //if (ship1Score>ship1ScoreLimit)ship1.y+=1;
   
   obstacle.setPosition(ship1.x,ship1.y);
   ship1box.setPosition(ship1.x,ship1.y);
   
   //////////////////////// SHIP !!!!!!!!!1 /////////////////////////////
   //////////////////////// SHIP LASER 1 /////////////////////////////
   
  strokeWeight(2);
  stroke(255);
  obstacle.setFill(0,0,0,10);
  ArrayList contacts = obstacle.getContacts();
  for (int i=0; i<contacts.size(); i++) {
    FContact c = (FContact)contacts.get(i);
    line(c.getBody1().getX(), c.getBody1().getY(), c.getBody2().getX(), c.getBody2().getY());
  //obstacle.setFill(255,0,0,100);
} 

/////////////////////// SHIP 2 /////////////////////////////////////////////////////////

   image(ship1sh,ship2.x+4, ship2.y-ship1sh.height/2);
   ship2.drawObject(ship2.x, ship2.y, 0); 
   
   //if (ship2Score>ship2ScoreLimit)
   ship2.y+=0.1;
   
   obstacle2.setPosition(ship2.x,ship2.y);
   ship2box.setPosition(ship2.x,ship2.y);
   
    //////////////////////// SHIP LASER 2 /////////////////////////////
   
  strokeWeight(2);
  stroke(255);
  obstacle2.setFill(0,0,0,10);
  ArrayList contacts2 = obstacle2.getContacts();
  for (int i=0; i<contacts2.size(); i++) {
    FContact c2 = (FContact)contacts2.get(i);
    line(c2.getBody1().getX(), c2.getBody1().getY(), c2.getBody2().getX(), c2.getBody2().getY());
  //obstacle.setFill(255,0,0,100);
} 
   
   
   
   /////////////////////// SHIP 3 /////////////////////////////////////////////////////////

   image(ship1sh,ship3.x+4, ship3.y-ship1sh.height/2);
   ship3.drawObject(ship3.x, ship3.y, 0); 
   
   //if (ship2Score>ship2ScoreLimit)
   ship3.y+=0.1;
   
   obstacle3.setPosition(ship3.x,ship3.y);
   ship3box.setPosition(ship3.x,ship3.y);
   
   //////////////////////// SHIP LASER 3 /////////////////////////////
   
  strokeWeight(2);
  stroke(255);
  obstacle3.setFill(0,0,0,10);
  ArrayList contacts3 = obstacle3.getContacts();
  for (int i=0; i<contacts3.size(); i++) {
    FContact c3 = (FContact)contacts3.get(i);
    line(c3.getBody1().getX(), c3.getBody1().getY(), c3.getBody2().getX(), c3.getBody2().getY());
  //obstacle.setFill(255,0,0,100);
} 
   
   ////////////////////////////////////// ////////////////////////////////////// 
  
}