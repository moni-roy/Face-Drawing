
float bx;
float by;
int time,wait=1000;

void setup(){
  size(400,450);
  bx=width/2.0;
  by=height/2.0;
  
  time=millis();
  
  smooth();
}
void Face(){
  beginShape();
  stroke(0);
  strokeJoin(ROUND);
  //fill(245,240,210);
  //fill(216,168,61);
  fill(240,228,189);
  
  stroke(2);
  strokeJoin(ROUND);
  
  //left
  vertex(150,200);
  vertex(150,242);
  
  //down
  curveVertex(150,250);
  curveVertex(160,265);
  curveVertex(170,275);
  curveVertex(185,285);
  curveVertex(196,287);
  curveVertex(205,287);
  curveVertex(215,285);
  curveVertex(230,275);
  curveVertex(240,265);
  curveVertex(250,250);
  
  //right
  vertex(250,243);
  vertex(250,200);
  //up
  vertex(240,198);
  vertex(238,190);
  vertex(230,189);
  vertex(215,175);
  vertex(200,178);
  vertex(180,180);
  vertex(170,185);
  vertex(160,183);
  
  endShape(CLOSE);
}

void Ear(){
  
  bezier(151,210,135,190,135,250,150,240);
  
  line(149,215,146,213);
  line(144,213,146,213);
  line(144,220,144,213);
  //line(144,220,143,225);
  //line(145,230,143,225);
  line(145,230,146,235);
  
  line(149,230,147,222);
  //line(148,229,146,226);
  
  line(149,220,146,219);
  
  line(146,218,144,224);
  line(144,224,146,229);
  
  bezier(250,210,265,190,265,250,250,240);
  
  line(252,215,255,210);
  line(255,210,256,215);
  line(256,215,257,220);
  line(257,220,257,230);
  line(257,230,254,235);
  
  line(252,215,254,215);
  line(254,215,254,219);
  line(254,232,255,225);
  
  line(251,218,251,228);
  
}
void Mouth()
{
  smooth();
  if(mousePressed && mouseButton==LEFT){
  //up
  strokeWeight(3);
    arc(200,227,85,83,1.24,1.89);
    //line(183,265,189,263);
    //line(189,263,190,263);
    //line(190,263,198,265);
    //line(198,265,201,265);
    //line(201,265,209,263);
    //line(209,263,210,263);
    //line(210,263,216,265);
    strokeWeight(1);
  
  }
  else{
    arc(200,227,85,83,1.25,1.89);
    
    //up
    line(183,265,189,263);
    line(189,263,190,263);
    line(190,263,198,265);
    line(198,265,201,265);
    line(201,265,209,263);
    line(209,263,210,263);
    line(210,263,216,265);
    //mouth_down
    line(183,265,184,266);
    line(184,266,186,267);
    line(186,267,190,270);
    line(190,270,198,273);
    line(198,273,202,273);
    line(202,273,210,270);
    line(210,270,214,267);
    line(214,267,216,265);
  }
}

void Nose(){
  strokeWeight(1);
  stroke(100);
  noFill();
  line(194,226,192,240);
  stroke(50);
  line(192,240,189,245);
  line(189,245,189,250);
  
  line(189,250,190,251);
  line(190,251,192,250);
  line(192,250,194,250);
  line(194,250,195,251);
  
  line(207,241,210,245);
  line(210,245,210,250);
  
  line(210,250,209,251);
  line(209,251,208,250);
  line(208,250,206,250);
  line(206,250,205,251);
  
  arc(200,203,50,100,1.41,1.73);
  
}
void myDelay(int ms){
  try{
    Thread.sleep(ms);
  }
  catch(Exception e){}
}
void Eye(){
  if(mouseX>=bx-100 && mouseX<=bx+100 && mouseY>=by-100 && mouseY<=by+100){
        
    //myDelay(200);
      //if(millis()-time>=wait){
        {
         //if(mousePressed){
      arc(177,220,25,8,0,3.14);
          for(int i=0;i<23;i+=3){
            line(166+i,224,166+i,226);
          }
          
          arc(223,220,25,8,0,3.14);
          for(int i=0;i<23;i+=3){
            line(213+i,224,213+i,226);
          }
          //time=millis();
        //myDelay(500);
        }
      //else {
       {
          //fill(255);
          //ellipse(177,220,25,8);
          //ellipse(223,220,25,8);
          //fill(0);
          //ellipse(177,220,10,8);
          //ellipse(223,220,10,8);
          //time=millis();
        }
        
  }
  else {
    fill(255);
  ellipse(177,220,25,8);
  ellipse(223,220,25,8);
  fill(0);
  ellipse(177,220,10,8);
  ellipse(223,220,10,8);
  }
}

void EyeLevel(){
  strokeWeight(4);
  noFill();
  arc(177,250,80,80,4.40,5.05);
  arc(223,250,80,80,4.40,5.05);
}

void Hair(){
  stroke(0);
  beginShape();
  
  fill(0);
  vertex(150,210);
  curveVertex(130,198);
  curveVertex(130,190);
  curveVertex(155,175);
  curveVertex(169,165);
  curveVertex(200,160);
  curveVertex(220,166);
  curveVertex(230,176);
  curveVertex(240,170);
  curveVertex(250,179);
  curveVertex(255,188);
  curveVertex(257,197);
  curveVertex(255,203);
  curveVertex(251,211);
  
  vertex(250,210);
  vertex(240,198);
  vertex(238,195);
  vertex(230,190);
  vertex(220,195);
  vertex(207,190);
  vertex(188,198);
  vertex(160,192);
    
  endShape();
}

void draw(){
  
  Face();
  Ear();
  Mouth();
  Eye();
  EyeLevel();
  Nose();
  Hair();
  
  //extra down
  
  line(160,265,165,280);
  line(165,285,165,280);
  line(165,285,164,289);
  
  line(240,265,235,280);
  line(235,285,235,280);
  line(235,285,236,289);
}