 import controlP5.*;

 ControlP5 cp5;

 import fisica.*;

 FWorld world;
 
 MyButton btnStartBSG=new MyButton();
 MyButton btnStartPC=new MyButton();
 MyButton btnShowIDScr=new MyButton();
 
 MyButton btnStartPers=new MyButton();
 
 infoTxt pl1Health=new infoTxt();
 infoTxt pl2Health=new infoTxt();
 infoTxt pl3Health=new infoTxt();
 infoTxt pl4Health=new infoTxt();
 
 
 infoTxt sh1Health=new infoTxt();
 infoTxt sh2Health=new infoTxt();
 infoTxt sh3Health=new infoTxt();
 infoTxt sh4Health=new infoTxt();
  

 
 // croudMode - 0, personal -1
 int mode=2; 
 int level=1; 
 int levelTime=100; 
 int levelTimeMinimum=500; 
 int limitLevels=7;
 
 boolean endLevel=false;
 
 boolean WebConect=false;
 
 boolean showLevelTasks=false;
 //boolean showLevelTasks=true;
 
 //String address1="";
 String gamePars="";
 String testAdress="";
 String textCode = "0c525";
 //String textCode = "";
 //String textCode = "df4ec";
 //String textCode = "3ee3e";
 
 String GameBaseSite="https://f1a704cc403f.ngrok.io/";
 String gFolder ="/amp2/";
 
 //String GameBaseSite="https://xn--80abcmqap2bkfm.xn--p1ai";
 //String gFolder ="/amp/";
 
  //String GameBaseSite="https://markerbank.com";
  //String gFolder ="/amp/";
 String usersFile ="";
 //String usersFile = GameBaseSite+gFolder+"getUsers.php";
 
 //PImage Tankimg,Tankimg2,Tankimg3,Tankimg4,Tankimg5,Tankimg6,Tankimg7,Tankimg8;
 PImage Plaine1img; 
 PImage shadow;
 PImage ship1sh;
 PImage em2;
 
 
 
 PImage fon;
 
 float x,y,u,a;
  float x2,y2,u2,a2;
   float x3,y3,u3,a3;
   
   float x4,y4,u4,a4;
   float x5,y5,u5,a5;
   float x6,y6,u6,a6;
   float x7,y7,u7,a7;
     float x8,y8,u8,a8;
 
 gameObject plane1 = new gameObject();
 gameObject plane2 = new gameObject();
 gameObject plane3 = new gameObject();
 gameObject plane4 = new gameObject();
 gameObject plane5 = new gameObject();
 gameObject plane6 = new gameObject();
 gameObject plane7 = new gameObject();
 gameObject plane8 = new gameObject();
 

 
 gameObject m1 = new gameObject();
 
 gameObject con1 = new gameObject();
 gameObject con1Sh = new gameObject();
 
 gameObject explosion = new gameObject();
 
 FBox plh1,  plh2, plh3, plh4, plh5, plh6, plh7, plh8 ;
 
  gameObject ship1 = new gameObject();
  FCircle obstacle;
  FBox ship1box;
 
  gameObject ship2 = new gameObject();
  FCircle obstacle2;
  FBox ship2box;
  
  gameObject ship3 = new gameObject();
  FCircle obstacle3;
  FBox ship3box;
  
  /////////////////////////////////////////// /////////////////////////////////////////// 
  /////////////////////////////////////////// /////////////////////////////////////////// 
  
  gameObject ship4 = new gameObject();
  FCircle obstacle4;
  FBox ship4box;
  
  gameObject ship5 = new gameObject();
  FCircle obstacle5;
  FBox ship5box; 
  
  gameObject ship6 = new gameObject();
  FCircle obstacle6;
  FBox ship6box;
  
 
 FCircle fcone1;
 
 int pl1Score=0, pl2Score=0, pl3Score=0, pl4Score=0, pl5Score=0, pl6Score=0, pl7Score=0, pl8Score=0;
 
 int ship1Score=10;
 int ship1ScoreLimit=-10;
 float ship1Spd=0.05;
 
 int ship2Score=5;
 int ship2ScoreLimit=-10;
 
 int ship3Score=5;
 int ship3ScoreLimit=-10;
 
 //
 
 int ship4Score=10;
 int ship4ScoreLimit=-10;
 
 int ship5Score=5;
 int ship5ScoreLimit=-10;
 
 int ship6Score=5;
 int ship6ScoreLimit=-10; 
 
 int bulletsLimit=50;
 int pl1bCount, pl2bCount, pl3bCount,pl4bCount;
 
 int pl1Delay, pl2Delay,pl3Delay, pl4Delay;
 
 int timeRestore=420;

 
 boolean pl1shot=false;
 boolean pl2shot=false;
 boolean pl3shot=false;
 boolean pl4shot=false;
 
 String startAdress,startPWD,sesID,screenMode,screenSet;  
 boolean screenF=false;
 
 public void settings(){
   
 // конф файл с настройками путей для отчётов и адрес целевой машины
   
 String[] lines = loadStrings("data/conf.txt");
 GameBaseSite=lines[0];
 gFolder=lines[1];
 startPWD=lines[2];
 sesID=lines[3]; 
 screenMode=lines[4];
 screenSet=lines[5];
 
 if (int(screenMode)==0)screenF=false;
 else screenF=true;
   
 String[] tmp=split(screenSet, 'x'); 
 
 int wScreen=int(tmp[0]);
 int hScreen=int(tmp[1]); 
 
 //println (wScreen);
 //println (hScreen);
 
   if (screenF)fullScreen();
   else size(wScreen,hScreen);
   
    usersFile = GameBaseSite+gFolder+"getUsers.php";
   
 }
 
 void setup() {
   
    
   ship4.y=height+250;
   ship5.y=height+200;
   ship6.y=height+200;

   
   btnStartBSG.y=height-150;
   btnStartBSG.label="Start Crowd Game";
   
   btnStartPC.y=height-150;   
   btnStartPC.label="Play Personal Game";
   
   btnShowIDScr.y=height-110;
   btnShowIDScr.label="Show ID Screen";
   
   btnStartPers.y=height-150;
   btnStartPers.label="Continue Game";
  
  startWinIni();
  descriptionIni();
  resultIni();
  p5controlStart();
  
  
  
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0,30);
  world.setEdges(-50,-50,width+100,height+100,color(255,255,0));
  
  //world.setEdges(0,0,width,height,color(255,255,0));  
  //noStroke();
  
  // Fisic's objects to implement collisions and  score
  
  fisicsStart();  
  gameGraficsIni();
  
  genGameParsIni();
   
 }
 
 void drawBg(){

   background(0,55,255);
 }
 
 void draw() {
    
   noStroke();
   // Limits level variable
   if (level>limitLevels)level=1;
   
   if (mode==0) startWin(); 
   // Crowd game preparations Description
   if (mode==1) mode1();
   //draw ID Screen
   if (mode==2) mode2();
   
   // show level tasks window
   
    if (mode==3 && !showLevelTasks){  
    if (level<1)level=1;
    
     infoLevel(level);
  
   }
   // play Net Game // play Net Game // play Net Game  
   if (mode==3 && showLevelTasks){
     
    // 
   //if (ship1Score<ship1ScoreLimit || levelTime<0 || ship1.y>height+10){
   //endLevel=true;
   
   if (endLevel){
    if(frameCount % 1 == 0) drawBg(); 
    infoWin("Mission Completed",24, true,true);
    
   } else {
     
     if(frameCount % 1 == 0)drawBg(); 
     
      // Special Options for levels //
      
     if (level==1){
     if (frameCount % 10 == 0)levelTime-=1;
     drawTimeBox(width/2, height/2, levelTime);      
      }
    
      if (level==2) drawShipsTop1(); 
      
      if (level==3) drawShipsBottom1(); 
      
      if (level==4) drawShipsTop2(); 
      
      if (level==5) drawShipsBottom2(); 
      
      if (level==6) drawShipsTop3(); 
      
      if (level==7) drawShipsBottom3();
     
    // connect to server 
      if(frameCount % 30 == 0) {
     thread("webConect2");
     //println(gamePars);
      }
    // draw back ground   
         
     // prepare data from server
      playGame(gamePars);
      
      healthDraw();   
      drawPlains();  
      // return plaines if they go further
      backToStage();
      // take off if score less than -1
      checkScore(); 
    
      ///////////////////////////////
     
      
    //////////// check if level ends ////////////////////  
      
     if (ship1Score<ship1ScoreLimit){ 
     endLevel=true; 
   }
   
   if (ship2Score<ship2ScoreLimit){ 
     endLevel=true; 
   }
   
   if (ship3Score<ship3ScoreLimit){ 
     endLevel=true; 
   }
   
   if (ship4Score<ship4ScoreLimit){ 
     endLevel=true; 
   }
   
   if (ship5Score<ship5ScoreLimit){ 
     endLevel=true; 
   }
   
    if (ship6Score<ship6ScoreLimit){ 
     endLevel=true; 
   }
   
   if (levelTime<0){
    endLevel=true;  
   }
   
   if ( ship1.y>height+10){
   endLevel=true;        
   } 
   
   if ( ship2.y>height+30){
   endLevel=true;        
   } 
   
   if ( ship3.y>height+30){
   endLevel=true;        
   } 
   
  if ( ship4.y<-100){
   endLevel=true;        
   } 
   
   if ( ship5.y<-120){
   endLevel=true;        
   }
      
  if ( ship6.y<-120){
   endLevel=true;        
   }    
      // ... // 
      
    // game Status check ends  
   } 
   
   }
   
   // play Personal game  // play Personal game  // play Personal game 
   if (mode==4) {
    
   if(frameCount % 1 == 0) drawBg(); 
   
   if (persInfoShown==false){

    infoPersLevel(plevel);
    
   } else {
   
  if (persLevelActive){
    genGamePars();
   
    playGame(gamePars);
      
      healthDraw();   
      drawPlains();  
      // return plaines if they go further
      backToStage();
      // take off if score less than -1
      checkScore(); 
      
  }
  
     if (pl2shot && pl3shot && pl4shot) {
       showPersLevelComleted("You win",24, true,true);
       persLevelActive=false;
     }
      
  
    
      ///////////////////////////////
     
     
   }
   
   }
   //text(mode,20,20);
   
 }
 
 /////////////////////////////////////////////////////////////////
 //////////////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////////////
 
 
 
  /////////////////////////////////////////////////////////////////
 //////////////////////////////////////////////////////////////////
 /////////////////////////////////////////////////////////////////
 
 void contactStarted(FContact c) {
   
   if(c.contains("plh1")==true && c.contains("n2")==true ){
   pl1Score--;
   pl2Score++;
   
   pl1Health.td=50;
   pl1Health.clRect=color(255,0,0,100);
   
   pl2Health.td=50;
   pl2Health.clRect=color(0,255,0,100);
   }
   //2
   if(c.contains("plh2")==true && c.contains("n1")==true ){
   pl1Score++;
   pl2Score--;
   
   pl2Health.td=50;
   pl2Health.clRect=color(255,0,0,100);
   
   pl1Health.td=50;
   pl1Health.clRect=color(0,255,0,100);
   
   }
   //3
   if(c.contains("plh3")==true && c.contains("n1")==true ){
   pl1Score++;
   pl3Score--;
   
   pl1Health.td=50;
   pl1Health.clRect=color(0,255,0,100);
   
   pl3Health.td=50;
   pl3Health.clRect=color(255,0,0,100);
 
   }
   
   if(c.contains("plh3")==true && c.contains("n2")==true ){
   pl2Score++;
   pl3Score--;
   
   pl2Health.td=50;
   pl2Health.clRect=color(0,255,0,100);
   
   pl3Health.td=50;
   pl3Health.clRect=color(255,0,0,100);
   
   
   }
   
   if(c.contains("plh1")==true && c.contains("n3")==true ){
   pl3Score++;
   pl1Score--;
   
   pl1Health.td=50;
   pl1Health.clRect=color(255,0,0,100);
   
   pl3Health.td=50;
   pl3Health.clRect=color(0,255,0,100);
   
   }
   
   if(c.contains("plh2")==true && c.contains("n3")==true ){
   pl3Score++;
   pl2Score--;
   
   pl2Health.td=50;
   pl2Health.clRect=color(255,0,0,100);
   
   pl3Health.td=50;
   pl3Health.clRect=color(0,255,0,100);
   }
   
   // 4
   
   if(c.contains("plh4")==true && c.contains("n1")==true ){
   pl1Score++;
   pl4Score--;
   
   pl1Health.td=50;
   pl1Health.clRect=color(0,255,0,100);
   
   pl4Health.td=50;
   pl4Health.clRect=color(255,0,0,100);
   
   }
   
   if(c.contains("plh4")==true && c.contains("n2")==true ){
   pl2Score++;
   pl4Score--;
   
   pl2Health.td=50;
   pl2Health.clRect=color(0,255,0,100);
   
   pl4Health.td=50;
   pl4Health.clRect=color(255,0,0,100);
   
   }
   
   if(c.contains("plh4")==true && c.contains("n3")==true ){
   pl3Score++;
   pl4Score--;
   
    pl3Health.td=50;
   pl3Health.clRect=color(0,255,0,100);
   
    pl4Health.td=50;
   pl4Health.clRect=color(255,0,0,100);
   }
   
   if(c.contains("plh1")==true && c.contains("n4")==true ){
   pl4Score++;
   pl1Score--;
   
   pl1Health.td=50;
   pl1Health.clRect=color(255,0,0,100);
   
   pl4Health.td=50;
   pl4Health.clRect=color(0,255,0,100);
   
   }
   
   if(c.contains("plh2")==true && c.contains("n4")==true ){
   pl4Score++;
   pl2Score--;
   
   pl2Health.td=50;
   pl2Health.clRect=color(255,0,0,100);
   
   pl4Health.td=50;
   pl4Health.clRect=color(0,255,0,100);
   
   }
   
   if(c.contains("plh3")==true && c.contains("n4")==true ){
   pl4Score++;
   pl3Score--;
   
   pl4Health.td=50;
   pl4Health.clRect=color(0,255,0,100);
   
   pl3Health.td=50;
   pl3Health.clRect=color(255,0,0,100);
   
   }
   
   /////////////////////////////////////////////////////////
   // // Detecting Ship Attacing by Planes // // 
   /////////////////////////////////////////////////////////
   
   if(c.contains("ship1box")==true && c.contains("n2")==true ){
     
   pl2Score++;
   ship1Score--;
   
   pl2Health.td=50;
   pl2Health.clRect=color(0,255,0,100);
   
   sh1Health.td=50;
   sh1Health.clRect=color(255,0,0,100);
   
   }
   
   if(c.contains("ship1box")==true && c.contains("n4")==true ){
   pl4Score++;
   ship1Score--;
   
   pl4Health.td=50;
   pl4Health.clRect=color(0,255,0,100);
   
   sh1Health.td=50;
   sh1Health.clRect=color(255,0,0,100);
   
   }
   
   /////////// //////////////// /////////////////// ///////////////////////////
    if(c.contains("ship4box")==true && c.contains("n1")==true ){
     
   pl1Score++;
   ship4Score--;
   
   pl1Health.td=50;
   pl1Health.clRect=color(0,255,0,100);
   
   sh4Health.td=50;
   sh4Health.clRect=color(255,0,0,100);
   
   }
   
    if(c.contains("ship4box")==true && c.contains("n3")==true ){
     
   pl3Score++;
   ship4Score--;
   
   pl3Health.td=50;
   pl3Health.clRect=color(0,255,0,100);
   
   sh4Health.td=50;
   sh4Health.clRect=color(255,0,0,100);
   
   }
   
 }
 
 void contactEnded(FContact c) {  
   
   fill(random(200)+125, random(200)+125, random(255),55+random(200));
    float rE=random(20,40);
    noStroke();
    ellipse(c.getX(), c.getY(), rE, rE);
   
   FBody ball = null;
  if (c.getBody1() == world.bottom) {
    ball = c.getBody2();
    world.remove(ball);
  } else if (c.getBody2() == world.bottom) {
    ball = c.getBody1();
    world.remove(ball);
  }
  
  if (c.getBody1() == world.left) {
    ball = c.getBody2();
    world.remove(ball);
  } else if (c.getBody2() == world.left) {
    ball = c.getBody1();
    world.remove(ball);
  }
  
  if (c.getBody1() == world.right) {
    ball = c.getBody2();
    world.remove(ball);
  } else if (c.getBody2() == world.right) {
    ball = c.getBody1();
    world.remove(ball);
  }
  
  if (c.getBody1() == world.top) {
    ball = c.getBody2();
    world.remove(ball);
  } else if (c.getBody2() == world.top) {
    ball = c.getBody1();
    world.remove(ball);
  }
  
  if (ball == null) {
    return;
  }
  
   
   
 }
