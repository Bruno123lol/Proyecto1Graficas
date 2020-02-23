PFont font;
//true es lleno
boolean opcionDeLlenado = true;

float tamCirc=25;

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

void setup(){
  size(1000,1000);
  font = createFont("Arial",16,true);
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
}

void menu(){
  background(255);
  textFont(font,16);                  
  fill(0);                         
  text("Filled?",50,100); 
  circle(posXCirc1,posYCirc1,tamCirc);
  //triangleSimple(50,135,25,25);
  noFill();
  circle(posXCirc2,posYCirc2,tamCirc);
  //triangleSimple(80,135,25,25);
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
}


void mouseClicked() {
  float radioCirc = tamCirc/2;
  println("Se clickeo el btn");
  if(clickBotonRelleno())
    opcionDeLlenado = true;
  else if (clickBotonNoRelleno())
    opcionDeLlenado = false;
}

boolean clickBotonNoRelleno(){
  return mouseX>(posXCirc2-radioCirc) && mouseX < (posXCirc2+radioCirc) && mouseY>(posYCirc2-radioCirc) && mouseY <(posYCirc2+radioCirc);
}

boolean clickBotonRelleno(){
  return mouseX>(posXCirc1-radioCirc) && mouseX < (posXCirc1+radioCirc) && mouseY>(posYCirc1-radioCirc) && mouseY <(posYCirc1+radioCirc);
}
