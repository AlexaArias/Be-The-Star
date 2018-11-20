import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;
import ddf.minim.*;

Minim music;
AudioPlayer music_vogue;
AudioPlayer music_bohemian;
AudioPlayer music_edge;


PImage Madonna;
PImage Mercury;
PImage Rezz;
PImage Inicio;
PImage Seleccion;
PImage Camara;



Capture video;
OpenCV opencv;

Pantalla pantalla;
Rostro rostro;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 

  music = new Minim(this);
  music_vogue     = music.loadFile("Vogue.mp3");
  music_vogue.setGain(-10);
  music_vogue.pause();

  music = new Minim(this);
  music_bohemian     = music.loadFile("Bohemian Rhapsody.mp3");
  music_bohemian.setGain(-10);
  music_bohemian.pause();

  music = new Minim(this);
  music_edge     = music.loadFile("Edge.mp3");
  music_edge.setGain(-10);
  music_edge.pause();

  //Pantallas
  pantalla = new Pantalla();
  rostro = new Rostro();

  //Imagenes
  Madonna = loadImage("Madonna.jpg");
  Mercury = loadImage("Mercury.jpg");
  Rezz = loadImage("Rezz.jpg");
  Inicio = loadImage("pantalla-inicio.jpg");
  Seleccion = loadImage("pantalla-seleccion.jpg");
  Camara = loadImage("camara.png");
}

void draw() {
  pantalla.display();
}

void captureEvent(Capture c) {
  c.read();
}

void keyPressed() {
  pantalla.teclado();
  //println(""+keyCode); //numero
}
