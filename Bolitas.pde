
class Bolitas {
  float py, px, velY;
  int tono, tono2;

  Bolitas (float px, float py, int tono, int tono2) {
    this.py = py;
    this.tono = tono;
    this.tono2 = tono2;
    this.px = px;
    velY = 6;
  }

  void dibujar () {
    fill (tono, 0, tono2);
    circle (px, py, 20);
  }  

  void rebotar () {
    py+= velY;
    if (py >= 410 || py <= 230) {
      velY*= -1;
    }
  }

  void moverP(int tecla) {

    if (tecla==RIGHT) {
      px+= 4;
    }
    if (tecla==LEFT) {
      px-= 4;
    }
    if (tecla==UP) {
      py-= 4;
    }
    if (tecla==DOWN) {
      py+= 4;
    }
  }
}
