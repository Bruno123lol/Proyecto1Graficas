PFont font;
//true es lleno
boolean opcionDeLlenado = true;

static final int fontSize = 16;

float tamCirc=25;
float radioCirc = tamCirc/2;
float posXCirc1 = 62;
float posYCirc1 = 123;
float posXCirc2 = 92;
float posYCirc2 = 123;

float posXShape = 50;
float posYPoint = 225;
int dif = 40;
float posYLine = posYPoint + dif;
float posYRect = posYLine + dif;
float posYEll = posYRect + dif;

int opcionDeFigura =1;
/**
1 punto
2 linea
3 rectangulo
4 elipse
*/

void setup(){
  size(1000,1000);
  font = createFont("Arial",fontSize,true);
}

void draw(){
  menu();
  if (opcionDeLlenado) {
    noFill();
    rect(47,108,29,29);
  } else {
    noFill();
    rect(77,108,29,29);
  }
  switch (opcionDeFigura) {
    case 1 :
      noFill();
      rect(45,posYPoint-fontSize,45,20);
    break;
    case 2 :
      noFill();
      rect(45,posYLine-fontSize,45,20);
    break;
    case 3 :
      noFill();
      rect(45,posYRect-fontSize,95,20);
    break;
    case 4 :
      noFill();
      rect(45,posYEll-fontSize,70,20);
    break;	
  }
}

void menu(){
  background(255);
  textFont(font,fontSize);                  
  fill(0);                         
  text("Filled?",posXShape,100); 
  circle(posXCirc1,posYCirc1,tamCirc);
  
  noFill();
  circle(posXCirc2,posYCirc2,tamCirc);
  
  text("Shape?",posXShape,200);

  fill(0);
  //punto
  circle(30,220,20);
  text("Point",posXShape,posYPoint); 
  //linea
  strokeWeight(2);
  line(20,260,40,260);
  text("Line",posXShape,posYLine);
  //rectangulo
  rect(20,290 , 25,15);
  text("Rectangle",posXShape,posYRect);
  //elipse
  ellipse(30,340, 25,20);
  text("Ellipse",posXShape,posYEll);

  text("Color?",posXShape,390);
  int posXColor = 50;
  int posXColor2 = posXColor+30;
  rect(posXColor,400, 20,20);
  rect(posXColor2,400, 20,20);
  rect(posXColor,440, 20,20);
  rect(posXColor2,440, 20,20);
  rect(posXColor,480, 20,20);
  rect(posXColor2,480, 20,20); 
}

void mouseClicked() {
  //println("Pos en x: "+mouseX+" Pos en y: "+mouseY);
  if(clickBotonRelleno())
    opcionDeLlenado = true;
  else if (clickBotonNoRelleno())
    opcionDeLlenado = false;
  else if(clickPuntoShape())
    opcionDeFigura = 1;
  else if(clickLineaShape())
    opcionDeFigura = 2;
  else if(clickRectanguloShape())
    opcionDeFigura = 3;
  else if(clickElipseShape())
    opcionDeFigura = 4;
}

boolean clickBotonNoRelleno(){
  return mouseX>(posXCirc2-radioCirc) && mouseX < (posXCirc2+radioCirc) && mouseY>(posYCirc2-radioCirc) && mouseY <(posYCirc2+radioCirc);
}

boolean clickBotonRelleno(){
  return mouseX>(posXCirc1-radioCirc) && mouseX < (posXCirc1+radioCirc) && mouseY>(posYCirc1-radioCirc) && mouseY <(posYCirc1+radioCirc);
}

boolean clickPuntoShape(){
  return mouseX>(17) && mouseX < (89) && mouseY>(posYPoint-fontSize) && mouseY <(posYPoint);
}

boolean clickLineaShape(){
  return mouseX>(18) && mouseX < (80) && mouseY>(posYLine-fontSize) && mouseY <(posYLine);
}

boolean clickRectanguloShape(){
  return mouseX>(16) && mouseX < (122) && mouseY>(posYRect-fontSize) && mouseY <(posYRect);
}

boolean clickElipseShape(){
  return mouseX>(15) && mouseX < (99) && mouseY>(posYEll-fontSize) && mouseY <(posYEll);
}
