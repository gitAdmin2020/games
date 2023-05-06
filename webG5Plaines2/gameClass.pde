class gameObject{
  int idx=0;
  PImage[] imgAr=null;
  int Arrlength=0;
  PImage img;
  float x,y,u;
  float wd,ht;
  
  int sx=1;
  int sy=1;
  
  boolean vis=true;
  boolean endFrame=false;
  
  boolean ShowShadow=true;
  
  boolean colide=false;
  
    void loadImgArr(String path){
    
    String Mpath =dataPath("");
    int sl = Mpath.length();
    Mpath =Mpath.substring(0,sl-5);     
    path=Mpath+path; 

  String[] filenames = listFileNames(path);
  filenames = sort(filenames);
  
  Arrlength=filenames.length;  
   imgAr=new PImage[Arrlength];
    
  for (int i=0;i<Arrlength;i++){   
    imgAr[i]=loadImage(path+ filenames[i]);
  }  

   }
   
   
   void drawFrame(int spd){ 
    
   if (this.vis) image(imgAr[idx], x, y,imgAr[idx].width/sx,imgAr[idx].height/sy); 
   if (frameCount % spd == 0)  idx=idx+1;
   if (idx==Arrlength-1) this.endFrame=true;
   if (idx>Arrlength-1) {
     idx=0;   
     this.endFrame=false;
   }
   }
    
  
  
  void gameObjectIni(String path){
  
   img= loadImage(path);
   wd=img.width;
   ht=img.height;
   
 }
 
 
 
 void drawObject(float x, float y, float u){
   
  pushMatrix();
  translate(x, y);
  rotate(u);
  
  
  
  image(img, -1*img.width/2, -1*img.height/2);
  
  
  
 
  
  popMatrix();
  
   pushMatrix();
   
  translate(x+50, y+50);
  
  rotate(u);
  
  if (ShowShadow)image(shadow, -1*shadow.width/2, -1*shadow.height/2);
  
  popMatrix();

  
   
 }
 ////////////////////////////////////////////////////
  public boolean CheckCollision(gameObject ob1,gameObject ob2)  
  {
    float ob1x1=ob1.x;
    float ob1wdth=ob1.wd;
    float ob1y1=ob1.y;
    float ob1ht=ob1.ht;
    
    float ob2x1=ob2.x;
    float ob2wdth=ob2.wd;
    float ob2y1=ob2.y;
    float ob2ht=ob2.ht;    
    
    colide=false;
    
    //if (rocket.x+rocket.width>target.x && rocket.x<(target.x+target.width) && rocket.y==(target.y+target.height/2))
    if (ob1x1+ob1wdth>ob2x1 && ob1x1<(ob2x1+ob2wdth))
    {
    
      if (ob1y1<(ob2y1+ob2ht)&& (ob1y1+ob1ht)>ob2y1){
        //if (ob1y1==ob2y1){  
        colide=true;
        //System.out.println(""+colide+"");
        
      }
      
      
    }
    return colide;
    
  }
    
 
 ////////////////////////////////////////////////////
  
}