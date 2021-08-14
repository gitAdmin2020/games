// Library to create buttons and textFields
import controlP5.*;
ControlP5 cp5;
// Phisics Library and World to Perform Simulation
import fisica.*;
// creating world for Simulation
FWorld world;

// creating entities of the ellements of the World
FBox pala;

FBox xE, yE, wE, hE ;

FCircle b,b2;

FBox lunka1;
FBox lunka2;
FBox lunka3;
FBox lunka4;
FBox lunka5;
FBox lunka6;

// start function


void startIni(){
  
  //1. creating buttons and textFields
   cp5 = new ControlP5(this); 
   PFont font = createFont("arial",20);
     cp5.addTextfield("NameSend")
     .setPosition(width/2-120,height/2+20)
     .setSize(240,30)
     .setFocus(true)
     .setFont(font) 
     .setColor(color(255))     
     .setLabel("")
     ;

  
     cp5.addButton("OK")
     .setValue(0)
     .setFont(font)
     .setPosition(width/2-50,height-180)
     .setSize(100,40)
     ;
     
     
     cp5.addButton("ONWeb")
     .setValue(0)
     .setFont(font)
     .setPosition(width/2-130,height-170)
     .setSize(260,40)
     .setLabel("Results OnLine ")
     ;
     
     cp5.addButton("unSet")
     .setValue(0)
     .setFont(font)
     .setPosition(width/2-130,height-170)
     .setSize(260,40)
     .setLabel("Reset")
    ;
     
     cp5.addButton("X")
     .setValue(0)
     .setFont(font)
     .setPosition(width/2-20,height-70)
     .setSize(40,40)
     ;
     
      cp5.addButton("EXIT")
     .setValue(0)
     .setFont(font)
     .setPosition(width/2-40,height-120)
     .setSize(80,40)
     ;
     
     
     cp5.get(Button.class,"unSet"). setVisible(false);
     cp5.get(Button.class,"ONWeb"). setVisible(false);
     
     
  ///////////////////////////////////////////////
  
  //2. creating ellements of the World to Perform Simulation

  
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 0);
  world.setEdges();
  
  lunka1= new FBox(50, 30);
  lunka1.setPosition(width/2,height-20);
  lunka1.setStatic(true);
  lunka1.setName("lunka1");
  lunka1.setNoStroke();
  lunka1.setFill(0,70,0);
  world.add(lunka1);
  
  lunka2= new FBox(50, 30);
  lunka2.setPosition(width/2,20);
  lunka2.setStatic(true);
  lunka2.setName("lunka1");
  lunka2.setNoStroke();
  lunka2.setFill(0,70,0);
  world.add(lunka2);
  
  lunka3= new FBox(30, 30);
  lunka3.setPosition(width-25,25);
  lunka3.setStatic(true);
  lunka3.setName("lunka1");
  lunka3.setNoStroke();
  lunka3.setFill(0,70,0);
  world.add(lunka3);
  
  lunka4= new FBox(30, 30);
  lunka4.setPosition(width-25,height-25);
  lunka4.setStatic(true);
  lunka4.setName("lunka1");
  lunka4.setNoStroke();
  lunka4.setFill(0,70,0);
  world.add(lunka4);
  
  
  lunka5= new FBox(30, 30);
  lunka5.setPosition(25,25);
  lunka5.setStatic(true);
  lunka5.setName("lunka1");
  lunka5.setNoStroke();
  lunka5.setFill(0,70,0);
  world.add(lunka5);
  
  
  lunka6= new FBox(30, 30);
  lunka6.setPosition(25,height-25);
  lunka6.setStatic(true);
  lunka6.setName("lunka1");
  lunka6.setNoStroke();
  lunka6.setFill(0,70,0);
  world.add(lunka6);
  
  pala = new FBox(20,10);
  //pala.setPosition(width/2, height - 40);
  pala.setStatic(true);
  pala.setDensity(0);
  pala.setFill(0);
  pala.setRestitution(0);
  pala.setName("kii");
  world.add(pala);
  
}

// function to restart level and return balls into the game

void ballsRecover(){
  
  
   float sz = 30;
    b = new FCircle(sz);
    b.setPosition(100,height/2);
    //b.setVelocity(5, 5);
    b.setRestitution(0.7);
    b.setDensity(0.5);
    b.setDamping(0.5);
    b.setNoStroke();
    b.setFill(200,200,0);
    b.setName("shar1");
    world.add(b);
      
    for(int i=0; i<5; i++){ 
    float bY=i*(sz+2)+200;
    b2 = new FCircle(sz);
    b2.setPosition(width-100,bY);  
    b2.setRestitution(0.7);
    b2.setDensity(0.5);
    b2.setDamping(0.5);
    b2.setNoStroke();
    b2.setFill(200,0,0);
    b2.setName("shar2");
    world.add(b2);    
    }
    
    for(int i=0; i<4; i++){ 
    float bY=i*(sz+2)+200;
    b2 = new FCircle(sz);
    b2.setPosition(width-100-sz,bY+sz/2);
    b2.setRestitution(0.7);
    b2.setDensity(0.5);
    b2.setDamping(0.5);
    b2.setNoStroke();
    b2.setFill(200,0,0);
    b2.setName("shar2");
    world.add(b2);    
    }
    
    for(int i=0; i<3; i++){ 
    float bY=i*(sz+2)+200;
    b2 = new FCircle(sz);
    b2.setPosition(width-100-sz*2,bY+sz);
    b2.setRestitution(0.7);
    b2.setDensity(0.5);
    b2.setDamping(0.5);
    b2.setNoStroke();
    b2.setFill(200,0,0);
    b2.setName("shar2");
    world.add(b2);    
    }
    
    for(int i=0; i<2; i++){ 
    float bY=i*(sz+2)+200;
    b2 = new FCircle(sz);
    b2.setPosition(width-100-sz*3,bY+sz*1.5);
    b2.setRestitution(0.7);
    b2.setDensity(0.5);
    b2.setDamping(0.5);
    b2.setNoStroke();
    b2.setFill(200,0,0);
    b2.setName("shar2");
    world.add(b2);    
    }
    
    float bY=height/2+sz/3;
    b2 = new FCircle(sz);
    b2.setPosition(width-100-sz*4,bY);
    b2.setRestitution(0.7);
    b2.setDensity(0.5);
    b2.setDamping(0.5);
    b2.setNoStroke();
    b2.setFill(200,0,0);
    b2.setName("shar2");
    world.add(b2);
  
}
