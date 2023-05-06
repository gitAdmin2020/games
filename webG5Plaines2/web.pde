PImage Logotip;
void p5controlStart(){
  
  Logotip=loadImage("bsgTitleLog.png");
  
  PFont font = createFont("arial",20);
  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("input")
     .setPosition(-500,height/2-20)
     .setSize(200,40)
     .setFont(font)
     .setFocus(true)
     .setColor(color(255,0,0))
     .setLabel("");
     ;
     
   textFont(font);  
   
   
     cp5.addButton("PlayGame")
     .setValue(0)
     .setPosition(-500,height/2+40)
     .setSize(200,40)
     .setFont(font)
     .setLabel("Play Game")
     ;
     
     cp5.addButton("RestartGame")
     .setValue(0)
     .setPosition(-500,height/2+40)
     .setSize(200,40)
     .setFont(font)
     .setLabel("Restart Game")
     ;
  
}

String getInfoAboutConnections(){
    String strToReturn="";    
    String rnd=str(random(0,999999));
    String tmpAdress=GameBaseSite+gFolder+"getUsers.php?r="+rnd+"&gx="+startPWD;
    String lines[] = loadStrings(tmpAdress);
    
    println(lines.length);
    
    //String tmp[] = split(lines[0],':');
    //gamePars=webConect(testAdress);
    //if (lines.length==0)strToReturn="";
     //else strToReturn = lines[0];
     try{
    strToReturn = lines[0];
     }catch (Exception e) {
    e.printStackTrace();
    strToReturn="";
    //line = null;
     }
    return strToReturn;
}

int connectionStatus=0;
String conChech="";
void drawIDScreen(){
  
  image(Logotip,width/2-Logotip.width/2,10);
  
  String str="from SmartPhone Enter: " + GameBaseSite + gFolder+" ";
  drTitle(str, height/2-110, color(255), 28, false, false, 0);
  
  //background(0);
  //textSize(28);
  str="YOUR Game ID is: "+startPWD;
  drTitle(str, height/2-40, color(255), 48, false, false, 0);
  
  if (frameCount % 30==0){
    conChech=getInfoAboutConnections();
  }
  
  str="No Connected Users Yet )";
  
  if (conChech.equals("")){   
    //str="No Connected Users Yet )";
    //str=conChech;
  } else{
  
  connectionStatus=1;
  }
  
  if (connectionStatus>0){
    
  String tmp[] = split(conChech,':');
  str="Connected Users: ........... "+(tmp.length-1);
  
  }
  
  drTitle(str, height/2+20, color(255), 28, false, false, 0);
  //float strLength=textWidth(str);
  //text(str,width/2-strLength/2,height/2+20);
  
  //cp5.get(Textfield.class,"input").setPosition(width/2-100,height/2-20);
  cp5.get(Button.class,"PlayGame").setPosition(width/2-100,height/2+80);
  cp5.get(Button.class,"RestartGame").setPosition(width/2-100,height/2+120);
  
  cp5.get(Textfield.class,"input").setText(startPWD);
  
  //text(cp5.get(Textfield.class,"input").getText(), 360,130);
  //text(width, 360,180);
  
  ///////////////////// Button 1 ///////////////////// 
  ///////////////////// /////// ////////////// ////////
  
  if (cp5.get(Button.class,"RestartGame").isPressed()){
    String regFile = GameBaseSite+gFolder+"newGame.php";
    String[] regData = loadStrings(regFile);
    startPWD=regData[0];
    
    String[] savePars;
    savePars=new String [6];    
    savePars[0]= GameBaseSite;
    savePars[1]= gFolder;
   
    savePars[2]=startPWD;
    savePars[3]=sesID;
    
    savePars[4]=screenMode;
    savePars[5]=screenSet;
      
    
    saveStrings("data/conf.txt", savePars);  
    
    
  }
  ///////////////////// Button 2 ///////////////////// 
  ///////////////////// /////// ////////////// ////////
  if (cp5.get(Button.class,"PlayGame").isPressed()){
    //webConect(String address)
    textCode=cp5.get(Textfield.class,"input").getText();
    
    String rnd=str(random(0,999999));
    testAdress=GameBaseSite+gFolder+"checkStageJava.php?r="+rnd+"&gx="+textCode;
    
    gamePars=webConect(testAdress);
    
    if (gamePars!=""){
      //level=1;
      mode=3;
  cp5.get(Textfield.class,"input").setPosition(-500,height/2-20);
  cp5.get(Button.class,"PlayGame").setPosition(-500,height/2+40);
  cp5.get(Button.class,"RestartGame").setPosition(-500,height/2+80);
      textSize(24);
    }
    //println(textCode);
    /*
    if (gamePars!=""){
    mode=1;
    playGame(gamePars);
    levelStarted=true;
    }
    */
  }
  

  
}


void webConect2(){
  String data="";
  String rnd=str(random(0,999999));
  //textCode="177d3";
  //testAdress="http://localhost/amp/checkStageJava.php?r="+rnd+"&gx="+textCode;
  //testAdress="https://xn--80abcmqap2bkfm.xn--p1ai/amp/checkStageJava.php?r="+rnd+"&gx="+textCode;
  testAdress=GameBaseSite+gFolder+"checkStageJava2.php?r="+rnd+"&gx="+textCode;
  
  try{

  String lines[] = loadStrings(testAdress);

 /*  */
  
  data=lines[0];  
}
catch( Exception e ){

}
finally{

}


  gamePars=data;
  

}



String webConect(String address){
  String data="";
  try{

  String lines[] = loadStrings(address);
//println("there are " + lines.length + " lines");
 /*
  for (int i = 0 ; i < lines.length; i++) {
  //println(lines[i]);
  
  }
  */
  
  data=lines[0];  
}
catch( Exception e ){
//если происходить ошибка, которая соответствует классу myException (наследуется от Exception) 
}
finally{
//выполняется в любом случае (добавлять finnaly не обязательно)
}

  return data;
  
}
