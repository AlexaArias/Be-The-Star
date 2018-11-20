class Rostro {


  Rostro() {
  }

  void Madonna() {
    Rectangle[] faces = opencv.detect();
    for (int i = 0; i < faces.length; i++) {
      image(Madonna,faces[i].x, faces[i].y, faces[i].width-2, faces[i].height-5);
    }
  }

  void Mercury() {
    Rectangle[] faces = opencv.detect();
    for (int i = 0; i < faces.length; i++) {
      image(Mercury, faces[i].x, faces[i].y, faces[i].width+2, faces[i].height+5);
    }
  }

  void Rezz() {
    Rectangle[] faces = opencv.detect();
    for (int i = 0; i < faces.length; i++) {
      image(Rezz, faces[i].x, faces[i].y, faces[i].width+2, faces[i].height+5);
    }
  }
}
