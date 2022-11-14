/* Juan Martin Bigot (91445/8), 2do adelanto del tp5.
 Hola profe, pude arreglar el tema de los fondos, le agregue botones (los botones [1] y [4] no funcionan como deberían) y música. Además, para hacerlo un poco más completo, le agregue un nivel más. 
 
 Lo que le falta al trabajo:
 Arreglar los botones que no andan 
 Limitar el movimiento del personaje (No se me ocurre donde prodría ubicar LimiteX y LimiteY)
 "LimiteX = constrain (px, 10, 750);
 LimiteY = constrain (py, 230, 490);"
 Agregale algunas imagenes (diseño de algunas pantallas)
 */

import processing.sound.*;
SoundFile musica;
Principal juego;

void setup () {
  size (800, 640);
  musica = new SoundFile (this, "main-theme-music.mp3");
  musica.play ();
  juego = new Principal ();
}

void draw () {
  juego.activar ();
  if (keyPressed) {
    juego.mover (keyCode);
  }
  if (musica.isPlaying ()) {
  } else {
    musica.loop();
    musica.jump (15);
  }
}


void mousePressed() {
  juego.activarBotones();
}
