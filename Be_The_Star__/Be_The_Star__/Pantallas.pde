class Pantalla{
  int p;
  Pantalla(){
  
  }
  
  void inicio(){
    pushMatrix();
    image(Inicio,0,0);
    popMatrix();
    if(key == 'f'){
      p = 1;
    }
  }
  
  void seleccion(){

      pushMatrix();
      image(Seleccion, 0, 0);
      popMatrix();
   
   
  }
  
  void camara(){
    opencv.loadImage(video);
    
    scale(2);
    image(video, 0, 0 );
    
    
    
     if (key == 'm'|| key=='M') {
      rostro.Madonna();
    } else {
      if (key=='q'|| key=='Q') {
        rostro.Mercury();
        
      }
      if (key=='r'|| key=='R') {
        rostro.Rezz();
     
      }
    }
    if(key == 'x'){
      exit();
    }
  }
  
  void display(){
    switch(this.p){
      case 0:
        inicio();
      break;
      
      case 1:
        seleccion();
        if(key == 'm'){
        p=2;
       music_vogue.loop();
        }
        if(key == 'q'){
        p=2;
        music_bohemian.loop();
        }
        if(key == 'r'){
        p=2;
        music_edge.loop();
        }
      break;
      
      case 2:
        camara();
        video.start();
      break;
    }
  }
  
  void teclado(){
    if(keyCode == 10){//enter
      saveFrame();

    }
  }
}
