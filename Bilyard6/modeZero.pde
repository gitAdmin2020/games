
void modeZeroIni(){
  
  // open conf file
  String[] lines = loadStrings("conf.txt");
  //put the data form file into variables
  programLink=lines[0];
  accDir=lines[1]; 
  accKey=lines[2]; 
  uidKey=lines[3];
  uidName=lines[5];
  
  if (uidKey.equals("0")){
     
  if (askedUserName==false){
  // draw the window on the screen    
  win1Onscreen=true;
  // time is no matter if uidKey equals zero
  tmDelay4win1=50;
  // draw text in the window
  label="Connection to On-line Rating!";
     
     }
     
     
   }
   
  
  
}

void modeZero(){
 
  background(0,0,151);
  // draw Effect
   st.dRaw();
  
  // uidKey - from conf file
  if (uidKey.equals("0")){
     
  if (askedUserName==false){
  
  // draw infor win in game
  win1Onscreen=true;
  tmDelay4win1=50;
  label="Connection to On-line Rating!";
  
  // function to draw fancy text
  drTitle(txLabel, height/2, 255, 20, true, false, 0);  
  
   // OK button to perfom connection to register new user name for rating
  if  (cp5.get(Button.class,"OK").isPressed() ) {
   
   // geting username from textField 
  String outName=cp5.get(Textfield.class,"NameSend").getText(); 
  
  // if outName has contains nothing
  if (outName.equals("")){
    
     } else {
  // perfoming request to the open web data base     
  String url=programLink+"?key="+accKey+"&acc="+accDir+"&uidKey="+uidKey+"&uName="+outName+"&task=70";
  String[] lines = loadStrings(url);
  int testCode=int(lines[0]);
  // if return Error - such name has already registered in the dataBase
  if (testCode==405){
    txLabel="This name exixsts. Provide a new one!";
  }  
  
  // if return Successfully registered Code
  // after getting string:
  // 1. creating an Array ->
  // 2. splitting string to Array by delimeter
  // 3. mix constant data and the data from the web
  // 4. writing register codes into conf - file
  // 5. hidding buttons and switching to mode 1
  
  // code 202 - is signal from programm that game is unregistered
  if (testCode==202){
    
  
   String[]toWrite=new String[6];
   String[]tmp=lines[1].split(":");
   
   toWrite[0]=programLink;
   toWrite[1]=accDir;
   toWrite[2]=accKey;
   toWrite[3]=tmp[1];
   toWrite[4]=lines[1];
   toWrite[5]=tmp[0];
   
   uidKey=tmp[1];
   uidName=tmp[0];
   
   saveStrings("data/conf.txt", toWrite);
   
   mode=1;
   askedUserName=true;
   
   cp5.get(Button.class,"OK"). setVisible(false) ;
   cp5.get(Button.class,"EXIT"). setVisible(false) ;
   cp5.get(Button.class,"X"). setVisible(false) ;
   cp5.get(Textfield.class,"NameSend").setVisible(false) ;

  
  }
  

    }

      } 

      }
     
    } else {
      
   //But 
   
   //if uidKey not equals to 0 :
   //1. switching to mode 1
   //2. hide asking user window and buttons
   //3. draw started window on the screen 
   
   mode=1;
   askedUserName=true;
   
   cp5.get(Button.class,"OK"). setVisible(false) ;
   cp5.get(Button.class,"X"). setVisible(false) ;
   cp5.get(Button.class,"EXIT"). setVisible(false) ;
   cp5.get(Button.class,"ONWeb"). setVisible(false) ;
   cp5.get(Textfield.class,"NameSend").setVisible(false) ;
   
  win1Onscreen=true;
  tmDelay4win1=50;
  label="Game Started! You are Welcome!";  
      
    }
    
    
  
  
}
