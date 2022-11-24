//por ahora este sector esta igual en relacion al contenido de las pantallas, cuando pueda agregare imagenes en algunas pantallas para hacerlas mas esteticas

class Fondo {
  PImage fondoPerder;
  PImage fondoGanar;
  PImage fondoNeutro;
  Fondo () {
    fondoPerder = loadImage ("fondoPerdiste.png");
    fondoGanar = loadImage ("fondoGanaste.png");
    fondoNeutro = loadImage ("fondoNegro.png");
    textAlign(CENTER);
  }

  void inicio () {
    background (212, 183, 227);
    fill (0);
    textSize (45);
    text ("The World's Hardest Game", width/2, height/2 - 150);
    textSize (15);
    text ("Presionar (i) para ver las intrucciones", width/2, height/2 + 300); //----------------------------------
  }
  void juego1 () {
    background (212, 183, 227);
    strokeWeight  (1);
    stroke (0, 0, 0, 255);
    fill (255);
    rect (0, height/2 - 100, width + 1, 200); 
    strokeWeight  (0);
    fill (0, 255, 0);
    rect (30, height/2 - 20, 40, 40);
    strokeWeight  (1);
    fill (0);
    rect (750, height/2-100, 10, 200);
  }

  void advertencia() {
    background (0);
    image (fondoNeutro, 0, 0);
    fill (255);
    textSize (50);
    text ("¡¡CUIDADO!!\n Ahora es más dificil...", width/2, height/2 - 20);
  }

  void juego2 () {
    background (224, 150, 93);
    strokeWeight  (1);
    stroke (0, 0, 0, 255);
    fill (255);
    rect (0, height/2 - 100, width + 1, 200); 
    strokeWeight  (0);
    fill (0, 255, 0);
    rect (30, height/2 - 20, 40, 40);
    strokeWeight  (1);
    fill (0);
    rect (750, height/2-100, 10, 200);
  }

  void perder() {
    background (255, 0, 0);
    textSize (100);
    fill (0);
    image (fondoPerder, 0, 0);
    text("GAME OVER", width/2, height/2-100);
  }

  void ganar () {
    background (139, 215, 255);
    textSize (80);
    fill (0);
    image (fondoGanar, 0, 0);
    text("¡¡GANASTE!!", width/2, height/2 - 100);
  }

  void creditos () {
    background (0);
    image (fondoNeutro, 0, 0);
    fill (255);
    textSize (40);
    text ("World's Hardest Game\nCreador: Juan Martin Bigot", width/2, height/2 -100);
  }

  void instrucciones () {
    background (212, 183, 227);
    fill (0);
    textSize (50);
    text ("INSTRUCCIONES", width/2, height/2 - 200 ); 
    textSize (25);
    text ("Objetivo: llegar a la meta\n sin tocar a los enemigos", width/2, height/2 - 100); 
    textSize (20);
    fill (0);
    text ("Presionar (RIGHT) para ir hacia la derecha \nPresionar (LEFT) para ir hacia la izquierda \nPresionar (UP) para ir hacia arriba \nPresionar (DOWN) para ir hacia abajo", width/2, height/2 );
  }
}
