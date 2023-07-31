PImage img;
int coloor;
int pX=250, pY=10;

void setup(){
  size(500,500);
  img=loadImage("laberinto.jpg"); 
}

void draw(){
  image(img,0,0);
//el personaje o la pelotita  
  noFill();
  strokeWeight(5);
  stroke(#5DBED1);
  ellipse(pX,pY, 25,25);
//el pixel que va a ir leyendo el color ira en medio de el personaje
   coloor= get(pX,pY);
  println(coloor);
//color tenian los muritos
if (coloor==-16777216){
    pX=250;
    pY=10;
   }
   
if(pX ==250 &pY ==490){
   textSize(100);
    fill(#08FA09);
    text("GANASTE",60,270);
   }
}
void keyPressed(){
  if (keyCode==UP){
    pY=pY-5;
  }
  if (keyCode==DOWN){
    pY=pY+5;
  }
  if (keyCode==RIGHT){
    pX=pX+5;
  }
  if (keyCode==LEFT){
    pX=pX-5;
  }

}
