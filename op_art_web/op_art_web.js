//TP3
//COMISION 5
// Profesor: Tobías Albirosa
// Nancy Breit, LEGAJO: 120390/7
// Youtube :
var j,i;
let alto = width /3;
let ancho= width /3;
let cantidadCuad = 24; //Grilla
let stroke;
function sinGrilla = 'false'; // función desactiva la grilla
function sinEfectoFocal = true; //Función que desactiva el efecto focal con key r
const Bridget;

function preload () {
  Bridget = loadImage ("assets/BridgetRiley .jpg");
  Bridget.resize ( width / 2, 0); // redimensiona la imágen op art y la ajusta a la izquierda.
}
function setup() {
  createCanvas(800, 400);
  sinEfectoFocal ( true); // Muestra la grilla sin efecto al iniciar
}

function draw() {
  image (Bridget, 0, 0, 400, 400);
}

function sinEfectoFocal (boolean efecto) { //dibuja la grilla a la derecha (función propia)
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
function mousePressed () {
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

function keyisPressed() {    // Borra todo al reiniciar
  if (key == 'r' || key == 'R') {
    sinGrilla = false;
    sinEfectoFocal (true);
  }
}
