/*Los botones [1] y [4] no andan como deberían. El [1] no funciona, y el [4] "Reiniciar nivel" no dirige hacia el segundo nivel, sinó que dirige al primero */

class Principal {
  Bolitas bolaP;
  Fondo pantalla;
  Bolitas [] enemigo = new Bolitas[6];
  Bolitas [] enemigo2 = new Bolitas[8];
  Botones [] boton = new Botones [8];

  int estado;
  int altoBoton;
  int anchoBoton; 

  Principal () {

    estado = 0;
    altoBoton = 60;
    anchoBoton = 200;
    
    bolaP = new Bolitas (50, height/2, 255, 0);

    boton[0] = new Botones(width/2 -100, height/2 - 50, anchoBoton, altoBoton);
    boton[1] = new Botones(width/2 -100, height/2 + 50, anchoBoton, altoBoton);  //-------------------------------------------
    boton[2] = new Botones(width/2 -100, height/2 + 150, anchoBoton, altoBoton);
    boton[3] = new Botones(width/2 -100, height/2 + 200, anchoBoton, altoBoton);
    boton[4] = new Botones(width/2 -100, height/2 + 200, anchoBoton, altoBoton); //-------------------------------------------
    boton[5] = new Botones(width/2 -100, height/2 + 250, anchoBoton, altoBoton);
    boton[6] = new Botones(width/2 -100, height/2 + 200, anchoBoton, altoBoton);
    boton[7] = new Botones(width/2 -100, height/2 + 200, anchoBoton, altoBoton);
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
      boton [1].dibujar ("Instrucciones"); //------------------------------------------
      boton [2].dibujar ("Créditos"); 
    }

    if (this.estado == 1) {
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
          estado = 3;
          bolaP.px = 50;
          bolaP.py = height/2;
        }
      }
    }

    if (estado == 2) {
      pantalla.perder ();
      boton[3].dibujar ("Reiniciar nivel"); //---------------------------------------
    }

    if (estado == 3) {
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
          estado = 5;
        }
      }
    }
    if (estado == 4) {
      pantalla.perder();
      boton [4].dibujar ("Reiniciar nivel"); //----------------------------------
    } 

    if (estado == 5) {
      pantalla.ganar();
      boton [5].dibujar ("Ver los créditos"); 
    }

    if (estado == 6) {
      pantalla.creditos ();
      boton [6].dibujar ("Menú");
    }
    if (estado == 7) {
      pantalla.instrucciones ();
      boton [7].dibujar("Menú");
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
    if (boton[1].botonPress(boton[1].px, boton[1].py, anchoBoton, altoBoton) && estado == 0) { //----------------------------
      estado = 7; //instrucciones
    }
    if (boton[2].botonPress(boton[2].px, boton[2].py, anchoBoton, altoBoton) && estado == 0) {
      estado = 6;
    }
    if (boton[3].botonPress(boton[3].px, boton[3].py, anchoBoton, altoBoton) && estado == 2) {
      estado = 1;
      bolaP.px = 50;
      bolaP.py = height/2;
    }
    if (boton[4].botonPress(boton[4].px, boton[4].py, anchoBoton, altoBoton)&& estado == 4) { //------------------------------
      estado = 3 ; //pantalla del segundo nivel
      bolaP.px = 50;
      bolaP.py = height/2;
    }
    if (boton[5].botonPress(boton[5].px, boton[5].py, anchoBoton, altoBoton)&& estado == 5) {
      estado = 6;
    }
    if (boton[6].botonPress(boton[6].px, boton[6].py, anchoBoton, altoBoton)&& estado == 6 || estado == 7 ) {
      estado = 0;
    }
  }
}
