// Breit Nancy 
// comisión 5 
PImage zanahoria;
void setup () {
  size (800, 400 );
  zanahoria = loadImage ("zanahoria.png");
  background ( 255, 255, 255);
} 



void draw () {
  image (zanahoria, 400  ,0 , 400 ,400 );
  fill (255 , 128 , 0);
beginShape(TRIANGLES);
// zanahoria parada
vertex(90, 100);
vertex(40, 320);
vertex(170, 100);
// zanahoria acostada
vertex(30, 300);
vertex(250, 210);
vertex(290, 310);
endShape();
// hojas zanahoria parada 
fill ( 0 , 255 , 0 );
beginShape(QUAD_STRIP); 
vertex(90, 20);
vertex(120, 100);
vertex(120, 20);
vertex(120, 20);

vertex(120, 20); 
vertex(120, 100); 
vertex(160, 20);
vertex(160, 20); 

vertex(220, 20);
vertex(120, 100);
vertex(160, 20);
vertex(160, 20);
endShape();
// hojas zanahoria acostada
fill ( 0 , 255 , 0 );
beginShape(QUAD_STRIP); 
vertex(400, 250);
vertex(275, 250);
vertex(275, 275);
vertex(275, 275);

vertex(400, 210); 
vertex(275, 250); 
vertex(275, 275);
vertex(275, 275); 

vertex(400, 270);
vertex(275, 250);
vertex(275, 275);
vertex(270, 275);
endShape();
}
