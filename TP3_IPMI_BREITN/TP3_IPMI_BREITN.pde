//TP3
//COMISION 5
// Profesor: Tobías Albirosa
// Nancy Breit, LEGAJO: 120390/7
// Youtube : https://www.youtube.com/watch?v=41bfeDG2OYA
int j, i;
int alto = width /3;
int ancho= width /3;
int cantidadCuad = 24; //Grilla
Float stroke;
boolean sinGrilla = false; // función desactiva la grilla
boolean sinEfectoFocal = true; //Función que desactiva el efecto focal con key r
PImage Bridget;

void setup() {
  size(800, 400);
  sinEfectoFocal ( true); // Muestra la grilla sin efecto al iniciar
  Bridget = loadImage ("BridgetRiley .jpg");
  Bridget.resize ( width / 2, 0); // redimensiona la imágen op art y la ajusta a la izquierda.
}

void draw() {
  image (Bridget, 0, 0, 400, 400);
}

void sinEfectoFocal (boolean efecto) { //dibuja la grilla a la derecha (función propia)
  background (255);
  for (int i = 0; i < cantidadCuad; i++) {  // ciclo for
    for (int j = 0; j < cantidadCuad; j++) { //estructura repetitiva anidada
      if ((i + j) % 2 != 0) {  // Condicional y operadores lógicos ! = revertir pintar b/n
        fill(255);
      } else {
        fill(0);
        rect(i * alto + 400, j * ancho, alto, ancho);
      }
    }
  }
}

//Evento del mouse que dura un instante y aparece el efecto focal
void mousePressed () {
  for (int i = 0; i < cantidadCuad; i++) {
    for (int j = 0; j < cantidadCuad; j++) {
      if ((i + j) % 2 != 0) {
        fill(255);
        rect(i * alto + 700, j * ancho, alto, ancho);
        alto =- 5;
      } else {
        fill(0);
        rect(i * alto + 700, j * ancho, alto, ancho);
        alto =- 5;
      }
    }
  }
}

void keyPressed() {    // Borra todo al reiniciar
  if (key == 'r' || key == 'R') {
    sinGrilla = false;
    sinEfectoFocal (true);
  }
}
