//TP2
//COMISION 5
// Profesor: Tobías Albirosa
// Nancy Breit, LEGAJO: 120390/7

PFont fuente;
PImage fondo, imagen1, imagen2, imagen3;
int pantalla, tiempo, suma, diametro;
boolean ultimaPantalla;
color colorDelBoton;

void setup() {
  size(640, 480);

  fondo = loadImage ("foto.jpg"); 
  fuente = loadFont("aAdulsaScript-48.vlw");
  textFont (fuente); 
  textSize(40);
  tiempo = frameCount;
  pantalla = 0;
  suma = 1;
  diametro = 200;
  ultimaPantalla = false;
  imagen1 = loadImage ("foto.jpg");
  imagen2 = loadImage ("foto1.jpg");
  imagen3 = loadImage ("foto2.jpg");
  colorDelBoton = color(120, 120, 120);
  
}

void draw() {
 //println("X:");
 //println(mouseX);
 //println("Y:");
 //println(mouseY);
  if (pantalla == 0) {
 image (imagen1, 0, 0, width, height);
    push();
    fill (255, 26, 17, mouseY);
    textSize ( 100 );
    text("El Principito", 50 , height/2);
    pop();
      
  } else if (pantalla == 1) {
    image ( imagen3, 0, 0, width, height);
    push();
    fill ( 255 , 24 , 17 );
    text("\n Personajes: \n Principito \n Rosa \n Zorro", 0, height/2);
    pop();
  } else if (pantalla == 2) {
   image(imagen2, 0, 0, width, height);
   fill (0, mouseY);
    text("LO ESENCIAL ES \n INVISIBLE A LOS OJOS", 0, height/2); 
     push(); 
      fill(colorDelBoton);
      circle(369, 350, diametro);
      textSize(48);
      fill(0);
      text("Reiniciar", 319, 50);    
      pop();
    if (pantalla == 3) {
    image(imagen3, 0, 0, width, height);       
    }
  } 

  // tiempo += suma;
  if (ultimaPantalla == false) {
    tiempo = tiempo + suma;
  }

  if (tiempo >= 100 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 3) {
      ultimaPantalla = true;
    }
  }
}
  
void mouseClicked() {
  //pantalla++;
  if (ultimaPantalla == true) {
    if (dist(369 , 350 , mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 0;
      suma = 1;
      ultimaPantalla = false;
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla == true) {
    //CONDICION PARA BOTÓN CIRCULAR
    if (dist(369 , 350 , mouseX, mouseY) < diametro/2) {
      colorDelBoton = color(225, 25, 19);
    }   
  }
}
