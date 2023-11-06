int funny = 75;
int lol, haha, ANGRY, haha1;
float sizeT;
int t=0;
int t2 = 0;
int buh = 255;
part[]obs = new part[funny];
void setup() {
  frameRate (100);
  size (800, 800);
  reset();
}
void draw() {
    background(0);
  for (int i =0; i<funny; i++) {
  
        obs[i].showH();
        obs[i].showT();
        obs[i].move();
  }
 
    t++;
  
}
class part {
  double myx, myy, mya, mys, myo, myx1, myy1, mys1, myo1, myc, size1;
  part() {
    myo = 255;
    myo1= 255;
    myx = lol;
    myy = haha;
    mys = (Math.random()*4);
    mys1=mys;
    mya = Math.random()*2*Math.PI;
    myc = 255;
    size1=8;
  }
  void move() {
    myx+= Math.cos(mya)*mys;
    myy+= Math.sin(mya)*mys;
  }
  void showH(){
    fill (192, 221, 158, (float)myo);
    ellipse((float)myx, (float)myy, 6, 6);
    myo-=4;
  
    //255,89,0
  }
  void showT() {
    myy1 = myy;
    myx1 = myx;
    for (int i =0; i<11; i++) {
      size1-=0.005;
      myo1-=0.4;
      mys1-=0.002;
      myx1-= Math.cos(mya)*mys1;
      myy1-= Math.sin(mya)*mys1;
      fill(187, 158, 221, (float)myo1);
      ellipse ((float)myx1, (float)myy1, (float)size1, (float)size1);
    }
   
  }
}
class odd extends part {
  float size2;
  odd() {
    myo1= 255;
    myx = lol;
    myy = haha;
    myx1 = lol;
    myy1 = haha;
    mys = (Math.random()*2);
    mys1=mys;
    mya = Math.random()*2*Math.PI;
    myc = 255;
    size1=10;
  
    size2 = (float)(Math.random()*6)+2;
  }
  void move() {
    myx+= (Math.cos(mya)*mys)/2;
    myy+= (Math.sin(mya)*mys)/2;
  }
  void showT() {
    for (int i =0; i<11; i++) {
      size1-=0.5;
      myo1-=0.4;
      mys1-=0.002;
      myx1-= Math.cos(mya)*mys1;
      myy1-= Math.sin(mya)*mys1;
      fill(187, 158, 221, (float)myo1);
      ellipse ((float)myx1, (float)myy1, size2, size2);
    }
  }
  
}
void mouseClicked() {
  lol = mouseX;
  ANGRY= mouseX;
  haha = mouseY;
  reset();
}
void reset() {
  sizeT=6;
  buh=255;
  haha1 = 800;
  t=0;
  background (0);
  noStroke();
  for (int i =0; i<funny; i++) {
    obs[i] = new part();
  }
  for (int i=0; i<funny/4; i++) {
    obs[i] =  new odd();
  }
  
}



