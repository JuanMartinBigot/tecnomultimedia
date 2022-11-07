//por ahora este sector esta igual en relacion al contenido de las pantallas, cuando pueda agregare imagenes en algunas pantallas para hacerlas mas esteticas
class Fondo {

  Fondo () {
  }

  void inicio () {
    fill (0);
    textSize (50);
    text ("The World's Hardest Game", width/2, height/2 - 200); 
    textSize (40);
    text ("JUGAR", width/2, height/2 ); 
    text ("INSTRUCCIONES", width/2, height/2 + 100 ); 
    text ("CREDITOS", width/2, height/2 + 200 );
  }
  void juego () {
    background (212, 183, 227);
    strokeWeight  (1);
    stroke (0, 0, 0, 255);
    fill (255);
    rect (0, height/2 - 100, width + 1, 200); 
    strokeWeight  (0);
    fill (0, 255, 0);
    rect (30, 380, 40, 40);
    strokeWeight  (1);
    fill (0);
    rect (750, 300, 10, 200);
  }

  void perder() {
    background (255, 0, 0);
    textSize (100);
    fill (0);
    text("GAME OVER", width/2, height/2-100); 
    textSize (20);
    text("presionar (r) \npara volver a jugar", width/2, height/2);
  }

  void ganar () {
    background (139, 215, 255);
    textSize (80);
    fill (0);
    text("¡¡GANASTE!!", width/2, height/2 - 100);
    textSize (20);
    text ("presionar (i) \npara ver los creditos", width/2, height/2);

    //if (key == 'r'){
    // Pantalla = 1;
    // PosX = 50;
    // PosY = 400;}

    // if (key == 'i') {
    // Pantalla = 4;}
  }

  void creditos () {
    background (0);
    fill (255);
    textSize (40);
    text ("World's Hardest Game\nCreador: Juan Martin Bigot", width/2, height/2 -200);
    textSize (20);
    text ("presionar (p) para ir al inicio", width/2, height/2 + 150);
  }

  void instrucciones () {
    fill (0);
    textSize (50);
    text ("INSTRUCCIONES", width/2, height/2 - 250 ); 
    textSize (30);
    text ("Objetivo: llegar a la meta\n sin tocar a los enemigos", width/2, height/2 - 100); 
    textSize (25);
    fill (255);
    rect (200, 580, 400, 40);
    fill (0);
    text ("Presionar la (D) para ir hacia la derecha \nPresionar la (A) para ir hacia la izquierda \nPresionar la (w) para ir hacia arriba \nPresionar la (S) para ir hacia abajo \n\nPresionar la (p) para ir al inicio", width/2, height/2 + 100 );
  }
}
