import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage img;
int coloor;
//X y Y tienen esos valores para que la pelotita apareza en lugar de inicio del laber
int pX=250, pY=10;

void setup(){
  size(500,500);
  img=loadImage("laberinto.jpg"); 
    
}

void draw(){
  image(img,0,0);
//el personaje o la pelotita  
  noFill();
  strokeWeight(7);
  stroke(#5DBED1);
  ellipse(pX,pY, 25,25);
//el pixel que va a ir leyendo el color ira en medio de el personaje
   coloor= get(pX,pY);
  println(coloor);
//el valor que dice ahi todo raro, segun el get decia que ese color tenian los muritos
if (coloor==-16777216){
   //aqui esta otra vez la posicion inicial de X y Y
    pX=250;
    pY=10;
   }
   
if(pX ==250 &pY ==490){
   textSize(100);
    fill(#08FA09);
    text("GANASTE",60,270);
    Minim minim;
  AudioPlayer player;
    minim = new Minim(this);
    player = minim.loadFile("vitoria.mp3");
    player.play();
   }
}
//los numeros pueden bajarle para mas lento, subirle para mas rapido .-.
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
