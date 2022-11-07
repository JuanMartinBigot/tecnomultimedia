class Principal {
  Bolitas bolaP;
  Bolitas [] enemigo = new Bolitas[6];
  Fondo pantalla;

  int estado = 1;

  Principal () {

    bolaP = new Bolitas (50, 300, 20, 255, 0);
    for (int i=0; i<enemigo.length; i++) { 
      enemigo[i] = new Bolitas(200+i*100, 250, 20, 0, 255);
    }
  }

  void activar () {

    if (estado == 0) {
      pantalla.inicio ();
    }

    if (this.estado == 1) {
      background (0); // lo estoy usando para probar el funcionamiento de las pelotas
      //pantalla.juego (); //tengo un ERROR en la carga de los fondos y todavia no lo pude solucionar todavia
      bolaP.dibujar ();
      for (int e=0; e<enemigo.length; e++) { 
        enemigo[e].dibujar();

        enemigo[e].rebotar();
        float distancia = dist (bolaP.px, bolaP.py, enemigo[e].px, enemigo[e].py);

        if (distancia <= 16) { //le puse 16 y no 20, porque poniendo 20 hay veces que mata al personaje sin siquiera tocarlo
          estado = 2;
        }
      }
    }

    if (estado == 2) {
      pantalla.perder ();
    }

    if (estado == 3) {
      pantalla.ganar();
    }

    if (estado == 4) {
      pantalla.creditos ();
    }

    if (estado == 5) {
      pantalla.instrucciones ();
    }
  }
  void mover(int tec) {
    bolaP.moverP(tec);
  }
}
