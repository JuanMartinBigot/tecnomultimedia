//Hay botones que no funcionan (más sobre esto en la clase principal) 

class Botones {
  int px, py, ancho, alto; 
  int actual, prox; 
  String texto;

  Botones(int px, int py, int ancho, int alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
    textAlign(CENTER, CENTER);
    textSize(alto/2);
  }
  void dibujar(String texto) {
    this.texto = texto;
    fill(255);
    strokeWeight(2);
    textSize (20);
    rect(px, py, ancho, alto); 
    fill (30);
    text(texto, px+ancho/2, py+alto/2 + alto/10);
  }
  boolean botonPress(int px, int py, int ancho, int alto) {
    return mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  }
} 
