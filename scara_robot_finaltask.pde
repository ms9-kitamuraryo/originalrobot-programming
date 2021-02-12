float baseH = 50;
float armL1 = 40;
float armL2 = 40;
float armL3 = 10;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l1 = 0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'd'){
      angle2 = angle2 + dif/10;
    }
    if(key == 'D'){
      angle2 = angle2 - dif/10;
    }
    if(key == 'f'){
      angle3 = angle3 + dif/10;
    }
    if(key == 'F'){
      angle3 = angle3 - dif/10;
    }
    if(key == 'g'){
      l1 = l1 - dif/5;
    }
    if(key == 'G'){
      l1 = l1 + dif/5;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(100);
  box(15,15,baseH);

  //1st link
  translate(0,0,-l1);
  fill(175);
  box(10,10,baseH);
  
  //2nd link
  rotateZ(radians(angle1));
  translate(0,armL1/2-armW1/2,baseH/2+armW1/2);
  fill(150);
  box(armW1,armL1,armW1);
  
  //3rd link
  //go to 3rd joint
  translate(0,armL1-2*armW2,armW2);
  rotateZ(radians(angle2));  
  //go to center of 3rd joint
  translate(0,armW2,0);
  fill(125);
  box(armW2,armL2,armW2);
  
  //4th link
  rotateX(radians(angle3));
  translate(0, armL2-armW2-armW3, 0);
  fill(255,0,0);
  box(5,15,5);

}
