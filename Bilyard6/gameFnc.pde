//////////////////////////////////////////////////////
void game(int level){
  
  background(0,151,0);
  
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  stroke(255);
  line (x,y-10,x,y+10);
  line (x-10,y,x+10,y);
  
  //rect(rectX,rectY,100,20);  
  //translate(width/2, height/2);  
  
  pushMatrix();
  translate(rectX, rectY);
  a = atan2(mouseY-height/2, mouseX-width/2);
  rotate(a);
  fill(255);
  rect(0, -5, 200, 10);
  
  fill(155);
  strokeWeight(2);
  stroke(155);
  line (-300,0,0,0);
  
  rect(kiyOfset, -5, 10, 10); 
  popMatrix();
  
  line (rectX,rectY-10,rectX,rectY+10);
  line (rectX-10,rectY,rectX+10,rectY);
  
  pala.setRotation(a);
  b.setRotation(a);
  //pala.setPosition(rectX-sin(a), rectY+cos(a));
 
  
  
  if (kiyActive){
   kiyOfset-=10; 
  }
  
  if (kiyOfset < -14){
    //kiyOfset=60;
    //kiyActive=false;
    //pala.setPosition(0, 0);
  }
  
  //if (kiyOfset > -15 && kiyOfset<5){
   if (kiyOfset<-10){
    kiyOfset=60;
    kiyActive=false;
    pala.setPosition(rectX-sin(a), rectY+cos(a));
    rectX=-300;
    rectY=-300;
    //pala.setVelocity(rectX-sin(a), rectY+cos(a));
  } else {
    pala.setPosition(0, 0);
  }
  
  //ellipse(x, y, 66, 66);
  
  world.draw();
  world.step();
  
  fill(255);
  text("Hi! "+uidName,80,30);
  text("The score is: "+score+":: level: "+(int(level)+1),80,50);
  text("Game time: "+gTime,80,70);
  //text("Game time: "+gTime+":: active: "+gBalls,80,70);
  
  if (frameCount % 30 == 0)gTime++;
  
}
