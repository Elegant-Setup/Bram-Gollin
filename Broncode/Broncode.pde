//De bedoeling van deze code is dat je je eigen Mondriaan tekent.
//Als je snel beweegt met de muis krijg je meer ruimte tussen de vakjes. 
//Beweeg je langzamer met de muis, dan zullen de vakjes dichter op elkaar gaan staan.

int grootte = 20;
int grootte_teller = 0;
color kleuren[] = { #ff0000, #ffff00, #0000ff, #eeeeee, #000000 }; //pallet met de kleuren van Mondriaan

void setup() {
  size(640, 640);
  background(255);
  rectMode(CENTER);
  
}

void draw() {
  float speed = abs(mouseX-pmouseX) + abs(mouseY-pmouseY);
  if (speed > 0) {
    variableRectangle();
  }
  noStroke();
  fill(255);
  triangle(0, height/2, width/2, 0, 0, 0);
  triangle(width/2, 0, width, 0, width, height/2);
  triangle(0, height/2, 0, height, width/2, height);
  triangle(width/2, height, width, height/2, width, height);
}

void variableRectangle() {  
  stroke(0);
  strokeWeight(2);
  //geeft de vakjes een willekeurige kleur uit het kleurenpallet van Mondriaan
  
  int randomgetal = (int)random(5);
  color kleur = kleuren[randomgetal];
  fill(kleur);
  
  //berekent grootte vakjes
  
  if (grootte_teller == 0) {
    grootte = 20;
    grootte_teller = 1;
  }
  else {
    grootte = 40;
    grootte_teller = 0;
  }
  
  //tekent een vierkantje
  
  rect(mouseX, mouseY, grootte, grootte);
}
