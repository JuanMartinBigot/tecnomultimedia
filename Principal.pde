class Principal {
  Bolitas bolaP;
  Fondo pantalla;
  Bolitas [] enemigo = new Bolitas[6];
  Bolitas [] enemigo2 = new Bolitas[8];
  Botones [] boton = new Botones [5];

  float estado;
  int tiempo; //
  int altoBoton;
  int anchoBoton; 

  Principal () {

    estado = 0;
    tiempo = 0; //
    altoBoton = 60;
    anchoBoton = 200;

    bolaP = new Bolitas (50, height/2, 255, 0);

    boton[0] = new Botones(width/2 -100, height/2, anchoBoton, altoBoton);
    boton[1] = new Botones(width/2 -100, height/2 + 100, anchoBoton, altoBoton);
    boton[2] = new Botones(width/2 -100, height/2 + 200, anchoBoton, altoBoton); 
    boton[3] = new Botones(width/2 -100, height/2 + 100, anchoBoton, altoBoton);
    boton[4] = new Botones(width/2 -100, height/2 + 200, anchoBoton, altoBoton);

    pantalla = new Fondo(); 

    for (int i=0; i<enemigo.length; i++) { 
      enemigo[i] = new Bolitas(200+i*100, 300, 0, 255);
    }
    for (int i=0; i<enemigo2.length; i++) { 
      if (i%2 == 0) {
        enemigo2[i] = new Bolitas(200+i*80, 300, 0, 255);
      } else {
        enemigo2[i] = new Bolitas(150+i*80, 400, 0, 255);
      }
    }
  }

  void activar () {

    if (estado == 0) {
      pantalla.inicio ();
      boton [0].dibujar ("Jugar");  
      boton [1].dibujar ("Créditos"); 
      if (keyPressed) { //---------------------------------------------
        if (key == 'i') {
          estado = 6;
        }
      }
    }

    if (estado == 1) {
      pantalla.juego1 (); 
      bolaP.dibujar ();
      for (int e=0; e<enemigo.length; e++) { 
        enemigo[e].dibujar();
        enemigo[e].rebotar();
        float distancia = dist (bolaP.px, bolaP.py, enemigo[e].px, enemigo[e].py); 

        if (distancia <= 16) { 
          estado = 2;
        }
        if (bolaP.px >= 760) { 
          estado = 2.5;
          bolaP.px = 50;
          bolaP.py = height/2;
        }
      }
    }

    if (estado == 2.5) {
      pantalla.advertencia();
      tiempo++;
      if (tiempo >= 150) {
        estado = 3;
      }
    }

    if (estado == 2) {
      pantalla.perder ();
      boton[2].dibujar ("Reiniciar juego");
    }

    if (estado == 3) {
      tiempo = 0;
      pantalla.juego2 ();
      bolaP.dibujar ();


      for (int e=0; e<enemigo2.length; e++) {

        enemigo2[e].dibujar();
        enemigo2[e].rebotar();
        float distancia = dist (bolaP.px, bolaP.py, enemigo2[e].px, enemigo2[e].py); 

        if (distancia <= 16) { 
          estado = 2;
        }
        if (bolaP.px >= 760) { 
          estado = 4;
        }
      }
    }

    if (estado == 4) {
      pantalla.ganar();
      boton [3].dibujar ("Ver los créditos");
    }

    if (estado == 5) {
      pantalla.creditos ();
      boton [4].dibujar ("Menú");
    }
    if (estado == 6) {
      pantalla.instrucciones();
      boton [4].dibujar("Menú");
    }
  }

  void mover(int tec) {
    bolaP.moverP(tec);
  }



  void activarBotones() {
    if (boton[0].botonPress(boton[0].px, boton[0].py, anchoBoton, altoBoton) && estado == 0) {
      estado = 1;
      bolaP.px = 50;
      bolaP.py = height/2;
    }
    if (boton[1].botonPress(boton[1].px, boton[1].py, anchoBoton, altoBoton) && estado == 0) {
      estado = 5;
    }
    if (boton[2].botonPress(boton[2].px, boton[2].py, anchoBoton, altoBoton) && estado == 2) {
      estado = 1;
      bolaP.px = 50;
      bolaP.py = height/2;
    }
    if (boton[3].botonPress(boton[3].px, boton[3].py, anchoBoton, altoBoton)&& estado == 4) {
      estado = 5;
    }
    if (boton[4].botonPress(boton[4].px, boton[4].py, anchoBoton, altoBoton)&& estado == 5 || estado == 6 ) {
      estado = 0;
    }
  }
}
