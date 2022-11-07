/* Juan Martin Bigot (91445/8), adelanto del tp5.
 Hola profe, por ahora solo pude completar la clase del personajes y los enemigos (con contacto) e ir probando el tema de los fondos (cuando declaro el metodo de estos me sale un error, ese error esta marcado en la clase principal)  */
Principal juego;

void setup () {
  size (800, 640);
  juego = new Principal ();
}

void draw () {
  juego.activar ();
}

void keyPressed() {
  juego.mover(keyCode);
}
