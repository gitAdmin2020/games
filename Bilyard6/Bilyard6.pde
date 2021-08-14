
// First of all you need to register and get ACC Key here : https://markerbank.com/
// Than read tutorial here : https://markerbank.com/start.php

////////////////////// ////////////////////// ////////////////////// ////////////////////// 
////////////////////// The Game Variables and Function Description ////////////////////////
////////////////////// ////////////////////// ////////////////////// ////////////////////// 

// variables to change position of the CUE in the gage 

float x;
float y;
float easing = 0.5;

float rectX=-300;
float rectY=-300;

// variables to understand is the CUE active
float a=0;
float kiyOfset=60;
boolean kiyActive=false;

//variables to draw the start screen window
boolean win1Onscreen=false;
int tmDelay4win1=80;
String label="The Billyard Arcade Started!";

// variables for connecting and getting register data for user rating

String programLink="";
String accDir="";
String accKey="";
String uidKey="";
String uidName="";

//  variables for textField

String txLabel="Create Acc Name";
boolean askedUserName=false;

// game mode and game play data
boolean ballsRecovered=false;
int mode=0;
int level=1;
int score=0;
int gTime=0;
int gBalls=15;
int gHits=0;
int gScoreDowns=0;
int gScoreUps=0;

// effect for pause and register new user

stars st = new stars();

boolean mSent=false;
boolean levelUp=false;



void setup() {
  
  // ini func for effect 
   st.starsIni() ;
   size(900, 500); 
   
  // create buttons and phisics entities 
   startIni();
   
  // read data from confile to define user settings 
  modeZeroIni();

  
}


  //////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////
  
  
void draw() { 
  
  if (mode==0){
   // performing connection to get info
    modeZero();
   
  }
  
   // game playing mode 
  
  if(mode==1) {
    
    if (!ballsRecovered){
     ballsRecovered=true; 
     ballsRecover();      
    }
    
    mSent=false;
    game(level);
    
  }

  // pause mode  
  
  if(mode==2){
    pauseGame(level);
    //cp5.get(Button.class,"ONWeb"). setVisible(false) ;
    cp5.get(Button.class,"ONWeb"). setVisible(true) ;
    cp5.get(Button.class,"unSet"). setVisible(false);
  }
  
  if(mode==3) endGame(level);
  
  if (gBalls==0 && levelUp==false){
   
    mode=3;    
    cp5.get(Button.class,"X"). setVisible(true) ;
    cp5.get(Button.class,"ONWeb"). setVisible(true);
    cp5.get(Button.class,"unSet"). setVisible(false);
    level++;
    levelUp=true;
    
  }
 
  
  if (win1Onscreen==true && tmDelay4win1>0)
  tmDelay4win1--;
  
  if (tmDelay4win1==0)win1Onscreen=false;

  if (win1Onscreen)eventsWin(label);
  
  if  (cp5.get(Button.class,"EXIT").isPressed() ) {
    
    System.exit(0);
    
  }
  
  
   if  (cp5.get(Button.class,"ONWeb").isPressed() ) {
    
    //System.exit(0);    
    String url="https://markerbank.com/grate.php?key="+accKey+"&acc="+accDir+"&par=2";
    //String link="https://markerbank.com/grate.php?key=524288196608655360196608720896&acc=vc_BbDaecBE&par=2";
    link(url);
    
  }
  
  
  if  (cp5.get(Button.class,"X").isPressed() ) {
    mode=1;
    cp5.get(Button.class,"X"). setVisible(false) ;
    cp5.get(Button.class,"ONWeb"). setVisible(false) ;
    cp5.get(Button.class,"EXIT"). setVisible(false) ;
    cp5.get(Button.class,"unSet"). setVisible(false);
  }
  
  
  if  (cp5.get(Button.class,"unSet").isPressed() ) { 
    
   String[]toWrite=new String[6];   
   //code
   toWrite[0]=programLink;
   toWrite[1]=accDir;
   toWrite[2]=accKey;
   toWrite[3]="0";
   toWrite[4]="0";
   toWrite[5]="0";
     
   saveStrings("data/conf.txt",toWrite);   
   //mode=0;   
   System.exit(0);
   
  }
  
  //cp5.get(Button.class,"OK"). setVisible(true) ;
  
}

void pauseGame(int level){
    
  background(0,50,151);

   st.dRaw();
   
   cp5.get(Button.class,"OK"). setVisible(false) ;
   //cp5.get(Button.class,"X"). setVisible(false) ;
   cp5.get(Textfield.class,"NameSend").setVisible(false) ;
   cp5.get(Button.class,"X"). setVisible(true) ;
   cp5.get(Button.class,"EXIT"). setVisible(true) ;
   
  win1Onscreen=true;
  tmDelay4win1=50;
  //label="Connection to On-line rating!";
  label="Game paused"; 
   
  
   
   
}

void endGame(int level){
    
  background(0,0,151);

   st.dRaw();
   
   cp5.get(Button.class,"OK"). setVisible(false) ;
   //cp5.get(Button.class,"X"). setVisible(false) ;
   cp5.get(Textfield.class,"NameSend").setVisible(false) ;
   
  //win1Onscreen=true;
  //tmDelay4win1=50;
  //label="Connection to On-line rating!";
  label="The results of the level "+str(level-1);
  drTitle(label, height/3, color(255,255,0), 32, true, false, 0);
  
  drTitle("Hi "+uidName+"!", 50, color(255), 24, true, false, 0);
  
  strokeWeight(5);
  /*
  fill(255,255,0);
  rect(20, height/2+20,width-40,5);  
  rect(20, height/2+40,width-40,5);
  */
  
  String result="The game time: "+gTime+"| Score: "+score+"|Looses: "+gScoreDowns+"|Wins:"+gScoreUps;
  drTitle(result, height/2, color(255), 24, true, false, 0);
  
  if (!mSent){
  
 String saveStr="level:"+level+":time:"+gTime+":score:"+score+":hits:"+gHits+":missed:"+gScoreDowns+":goodHits:"+gScoreUps;
   // kiyActive=true;   
  win1Onscreen=true;
  tmDelay4win1=100;  
//String tx = saveStr.trim().replaceAll("\\s+", "_"); 
//String url=host+"chatTxt/chat.php?key="+chatKey+"&par=1&tx="+tx;
  String tx = saveStr; 
//String tx = "test"; 
  String url=programLink+"?key="+accKey+"&acc="+accDir+"&uidKey="+uidKey+"&uName="+uidName+"&task=10&tx="+tx;
  String[] lines = loadStrings(url);

  mSent=true;
  label="Save Information On Line"; 
  ballsRecovered=false;
//label=url;

  }
  
  
}





//////////////////////////////////////////////////////
//////////////////////////////////////////////////////

void keyPressed(){
  
  //kiyOfset=
  if (key==' '){
    kiyActive=true;
    gHits++;
  }
  
  if (mode!=0 && key=='p'){
    mode=2;
  }
  
if (key=='a'){
  /*
  if (!mSent){
  
 String saveStr="level:"+level+":time:"+gTime+":score:"+score+":hits:"+gHits+":missed:"+gScoreDowns+":goodHits:"+gScoreUps;
   // kiyActive=true;   
  win1Onscreen=true;
  tmDelay4win1=250;  
//String tx = saveStr.trim().replaceAll("\\s+", "_"); 
//String url=host+"chatTxt/chat.php?key="+chatKey+"&par=1&tx="+tx;
  String tx = saveStr; 
//String tx = "test"; 
  String url=programLink+"?key="+accKey+"&acc="+accDir+"&uidKey="+uidKey+"&uName="+uidName+"&task=10&tx="+tx;
  String[] lines = loadStrings(url);

  mSent=true;
  label="Save Information On Line"; 
  
//label=url;
   
   
  }
  */
  }
  
  
  /*
  gTime=0;
  gBalls=15;

  gHits=0;
  gScoreDowns=0;
  gScoreUps=0;
  */
  
        
  //pala.setPosition(rectX-sin(a)*100, rectY+cos(a));
  
}

void mousePressed(){
  
  rectX=x;
  rectY=y;
  
}


/////////////////////////////////////////////

/////////////////////////////////////////////

void contactEnded(FContact c) {  
  
  if (c.contains("kii") ==true && c.contains("shar1")){
    b.setVelocity(-cos(a)*1900,-sin(a)*1900); 
  }

}

void contactStarted(FContact c) {
  
 if (c.contains("lunka1") && c.contains("shar1")){
   score--;
   
  win1Onscreen=true;
  tmDelay4win1=50;
  label="You Loose Score!";
  gScoreDowns++;
   
 } else {
   
  FBody ball = null;
  if (c.getBody1() == lunka1 || c.getBody1() == lunka2 || c.getBody1() == lunka3 || c.getBody1() == lunka4 || c.getBody1() == lunka5 || c.getBody1() == lunka6) {
    ball = c.getBody2();
  } else if (c.getBody2() == lunka1 || c.getBody2() == lunka2 || c.getBody2() == lunka3 || c.getBody2() == lunka4 || c.getBody2() == lunka5 || c.getBody2() == lunka6) {
    ball = c.getBody1();
  }
  
  if (ball == null) {
    return;
  }
  
  ball.setFill(30, 190, 200);
  world.remove(ball);
  score++; 
  gScoreUps++;
  
  win1Onscreen=true;
  tmDelay4win1=50;
  label="You Score Is "+ score;
  
  gBalls--;
  
}
}
