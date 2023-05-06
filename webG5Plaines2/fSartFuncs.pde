  void fisicsStart(){
  plh1 = new FBox(50, 20);
  plh1.setPosition(0,-20);
  //plh1.setPosition(width/2, height - 40);
  plh1.setStatic(true);
  plh1.setFill(0,0,0,10);
  plh1.setStroke(0,0,0,10);
  plh1.setRestitution(0);
  plh1.setName("plh1");
  world.add(plh1);
  
  plh2 = new FBox(50, 20);
  plh2.setPosition(0,-20);
  plh2.setStatic(true);
  plh2.setFill(0,0,0,10);
  plh2.setStroke(0,0,0,10);
  plh2.setRestitution(0);
  plh2.setName("plh2");
  world.add(plh2);
  
  plh3 = new FBox(50, 20);
  plh3.setPosition(0,-20);
  plh3.setStatic(true);
  plh3.setFill(0,0,0,0);
  plh3.setStroke(0,0,0,0);
  plh3.setRestitution(0);
  plh3.setName("plh3");
  world.add(plh3);
  
  plh4 = new FBox(50, 20);
  plh4.setPosition(0,-20);
  plh4.setStatic(true);
  plh4.setFill(0,0,0,0);
  plh4.setStroke(0,0,0,0);
  plh4.setRestitution(0);
  plh4.setName("plh4");
  world.add(plh4);
  
  
  ship1box= new FBox(20, 70);
  ship1box.setPosition(0,-20);
  ship1box.setStatic(true);
  ship1box.setFill(0,0,0,10);
  ship1box.setStroke(0,0,0,0);
  ship1box.setRestitution(0);
  ship1box.setName("ship1box");
  world.add(ship1box);
  
  
  obstacle = new FCircle(200);
  obstacle.setNoStroke();
  //obstacle.setRotation(PI/4);
  obstacle.setPosition(width/2, height*2);
  obstacle.setStatic(true);
  obstacle.setFill(0,0,0,10);
  obstacle.setRestitution(0);
  world.add(obstacle);
  
  ship2box= new FBox(20, 70);
  ship2box.setPosition(0,-20);
  ship2box.setStatic(true);
  ship2box.setFill(0,0,0,10);
  ship2box.setStroke(0,0,0,0);
  ship2box.setRestitution(0);
  ship2box.setName("ship2box");
  world.add(ship2box);
  
  
  obstacle2 = new FCircle(200);
  obstacle2.setNoStroke();
  //obstacle.setRotation(PI/4);
  obstacle2.setPosition(width/2, height*2);
  obstacle2.setStatic(true);
  obstacle2.setFill(0,0,0,10);
  obstacle2.setRestitution(0);
  world.add(obstacle2);
  
  ship3box= new FBox(20, 70);
  ship3box.setPosition(0,-20);
  ship3box.setStatic(true);
  ship3box.setFill(0,0,0,10);
  ship3box.setStroke(0,0,0,0);
  ship3box.setRestitution(0);
  ship3box.setName("ship3box");
  world.add(ship3box);
  
  
  obstacle3 = new FCircle(200);
  obstacle3.setNoStroke();
  //obstacle.setRotation(PI/4);
  obstacle3.setPosition(width/2, height*2);
  obstacle3.setStatic(true);
  obstacle3.setFill(0,0,0,10);
  obstacle3.setRestitution(0);
  world.add(obstacle3);
  
    ship4box= new FBox(20, 70);
  ship4box.setPosition(0,-20);
  ship4box.setStatic(true);
  ship4box.setFill(0,0,0,10);
  ship4box.setStroke(0,0,0,0);
  ship4box.setRestitution(0);
  ship4box.setName("ship4box");
  world.add(ship4box);

  obstacle4 = new FCircle(200);
  obstacle4.setNoStroke();  
  obstacle4.setPosition(width/2, height*2);
  obstacle4.setStatic(true);
  obstacle4.setFill(0,0,0,10);
  obstacle4.setRestitution(0);
  world.add(obstacle4);
  
  
  ship5box= new FBox(20, 70);
  ship5box.setPosition(0,-20);
  ship5box.setStatic(true);
  ship5box.setFill(0,0,0,10);
  ship5box.setStroke(0,0,0,0);
  ship5box.setRestitution(0);
  ship5box.setName("ship5box");
  world.add(ship5box);

  obstacle5 = new FCircle(200);
  obstacle5.setNoStroke();  
  obstacle5.setPosition(width/2, height*2);
  obstacle5.setStatic(true);
  obstacle5.setFill(0,0,0,10);
  obstacle5.setRestitution(0);
  world.add(obstacle5);
  
  
  ship6box= new FBox(20, 70);
  ship6box.setPosition(0,-20);
  ship6box.setStatic(true);
  ship6box.setFill(0,0,0,10);
  ship6box.setStroke(0,0,0,0);
  ship6box.setRestitution(0);
  ship6box.setName("ship6box");
  world.add(ship6box);

  obstacle6 = new FCircle(200);
  obstacle6.setNoStroke();  
  obstacle6.setPosition(width/2, height*2);
  obstacle6.setStatic(true);
  obstacle6.setFill(0,0,0,10);
  obstacle6.setRestitution(0);
  world.add(obstacle6);
  
  /*
  fcone1= new FCircle(35);
  fcone1.setNoStroke();
  //obstacle.setRotation(PI/4);
  fcone1.setPosition(width/2, height/2);
  fcone1.setStatic(true);
  fcone1.setFill(0,0,0,100);
  fcone1.setRestitution(0);
  world.add(fcone1);
  */
  
  }