//TP2
//COMISION 5
// Profesor: Tobías Albirosa
// Nancy Breit, LEGAJO: 120390/7

PFont fuente;
PImage imagen1, imagen2, imagen3;
int pantalla, tiempo, suma, diametro;
boolean ultimaPantalla;
color colorDelBoton;

void setup() {
  size(640, 480);
  imagen1 = loadImage ("foto.jpg");
  imagen2 = loadImage ("foto1.jpg");
  imagen3 = loadImage ("foto2.jpg");
  fuente = loadFont("aAdulsaScript-48.vlw");
  textFont (fuente); 
  textSize(40);
  tiempo = frameCount/2;
  pantalla = 0;
  suma = 1;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(255 , 24 , 17);  
}

void draw() {
  if (pantalla == 0) {
 image (imagen1, 0, 0, width, height);
    push();
    fill (255, 26, 17, mouseY);
    textSize ( 100 );
    text("El Principito", 150 , 80);
    pop();    
  } else if (pantalla == 1) {
    image ( imagen3, 0, 0, width, height);
    push();
    fill ( 255 , 24 , 17, mouseX );
    text("Personajes: \n Principito \n Rosa \n Zorro", 10, 300);
    pop();
  } else if (pantalla == 2) {
   image(imagen2, 0, 0, width, height);
   fill (0, mouseY);
    text("LO ESENCIAL ES INVISIBLE A LOS OJOS", 0, 30); 
     push(); 
      fill(colorDelBoton);
      circle(583, 162, diametro);
      textSize(18);
      fill(0);
      text("Reiniciar", 560, 162);    
      pop();
    if (pantalla == 3) {
    image(imagen3, 0, 0, width, height);       
    }
  } 

  // tiempo += suma;
  if (ultimaPantalla == false) {
    tiempo = tiempo + suma;
  if (tiempo >= 30 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    } 
   }
  }
}
  
void mouseClicked() {
  push ();
  pantalla++;
  if (ultimaPantalla == true) {
    if (dist( 583 , 162 , mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 0;
      suma = 1;
      ultimaPantalla = false;
      pop ();
    }
  }
}
  //CONDICION PARA BOTÓN CIRCULAR
void mouseMoved() {
  if (ultimaPantalla == true) {
    if (dist(583 , 162 , mouseX, mouseY) < diametro/2) {
     
      colorDelBoton = color(225, 25, 19);
    }   else {
       push ();  
      colorDelBoton = color(25, 25, 19);
        textSize ( 18);
        fill ( 225 , 0 ,0 );
         text("Reiniciar", 560, 162); 
         pop ();
    }   
  }
}  
