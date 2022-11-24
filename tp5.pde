/* comisión 1, tp5, Juan Martin Bigot (91445/8). "The World's Hardest Game", juego del tp3 hecho en POO.
 Link al video explicando:https://youtu.be/CeR9DfG1QIc
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
