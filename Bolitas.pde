//este sector esta completado
class Bolitas {
  float py, px, velY;
  int tam, tono, tono2;

  Bolitas (float px, float py, int tam, int tono, int tono2) {
    this.py = py;
    this.tam = tam;
    this.tono = tono;
    this.tono2 = tono2;
    this.px = px;
    velY = 5;
  }

  void dibujar () {
    fill (tono, 0, tono2);
    circle (px, py, tam);
  }  

  void rebotar () {
    py+= velY;
    if (py >= 400 || py <= 200) {
      velY*= -1;
    }
  }

  void automatico () {
  }

  void moverP(int tecla) {

    if (tecla==RIGHT) {
      px+= 5;
    }
    if (tecla==LEFT) {
      px-= 5;
    }
    if (tecla==UP) {
      py-= 5;
    }
    if (tecla==DOWN) {
      py+= 5;
    }
  }
}
