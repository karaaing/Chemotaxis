 Bacteria [] dot= new Bacteria[500];
 void setup() {      
   size(440,440);
   for(int i=0;i<dot.length;i++) {
    dot[i]=new Bacteria();
  }
 }   
 void draw() {    
   background(205, 212, 255);
   for(int i = 0; i < dot.length; i++) {
     dot[i].show();
     dot[i].move();
   }  
 }
 void mousePressed(){
  redraw();
 }
 class Bacteria {     
   int myX, myY, myColor;
   Bacteria(){
     myX=(int)(Math.random()*300)+50;
     myY=(int)(Math.random()*300)+50;
     myColor=color((int)(Math.random()*50)+25,(int)(Math.random()*220)+25,(int)(Math.random()*2));
   }
 void show(){
     fill(myColor);
     stroke(myColor);
     ellipse(myX,myY,7,7);
   }
   void move(){
     myX = myX+((int)(Math.random()*5)-2);
     myY = myY+((int)(Math.random()*5)-2); 
 }    
}
