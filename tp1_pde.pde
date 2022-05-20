import ddf.minim.*;
Minim minim;
AudioPlayer StartGame;

PImage imgMortalKombat, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13;
float x;
float y = 150.0;
int espacio;
int pantalla;
boolean dibujar;

void setup(){
size(1000, 600);
pantalla = 1;
x = 0;


//Fondo//
imgMortalKombat = loadImage("mortal.kombat.logo..jpg");
imgMortalKombat.resize(1000, 600);
img1 = loadImage("img.mortal.kombat.inicio.png");
img2.resize(400, 350);
img3 = loadImage("fondo.jpg");
img3.resize(1000,600);

img10 = loadImage("fondo3.jpg");
img10.resize(1000,600);

img11 = loadImage("fondo4.png");
img11.resize(1000,600);

img12 = loadImage("fondo5.jpg");
img12.resize(1000,600);

img13 = loadImage("fondo20.png");
img13.resize(1000,600);

// Personajes principales//
img4 = loadImage("Subcero.png");
img4.resize(450, 450);
img5 = loadImage("Scorpio.png");
img5.resize(425, 425);

img6 = loadImage("Goro.png");
img6.resize(250, 250);
img7 = loadImage("Liu Kant.png");
img7.resize(250, 250);
img8 = loadImage("Baaraka.png");
img8.resize(250,250);
img9 = loadImage("Kabal.png");
img9.resize(250, 250);

dibujar = true;

minim = new Minim(this);
StartGame = minim.loadFile("Mortal.Kombat11.mp3");
}
void draw(){ //Pantalla 1//
if(pantalla == 1){ 
background(0);
if(x > (width/2) - 50){
image(img3, 0, 0);
image(img4, 50,100);
image(img2, x, 100);
textSize(30);
text("StartGame", espacio+500, 500);
fill(0, 127, 255);
}
else{
image(imgmortalKombat, 0, 0);
x++;
image(img2, 0+x, 100);
}
// Pantalla 2 Personajes principales//
}
if(pantalla == 2){
image(img2, 0+x, 100);
x++;

image(img10, 0, 0);
image(img5,500, 120);
image(img4, 0, 100);
textSize(50);
text("PERSONAJES PRINCIPALES", 170, 100);
fill(0, 255, 0);

textSize(60);
text("Subcero", 200, 500);
fill(255, 255, 0);

textSize(60);
text("scorpion", 750, 500);
fill(0, 127, 255);
}

// Pantalla 3 personajes secundarios//
if(pantalla == 3){
image(img11, 0, 0);
image(img6, 50, 50);
image(img7, 550, 50);
image(img8, 50, 300);
image(img9, 550, 300);

textSize(50);
text("Goro", 250, 250);
fill(127, 255, 0);

textSize(50);
text("Liu kant", 750, 250);
fill(255, 255, 0);

textSize(50);
text("Baaraka", 250, 500);
fill(0, 0, 255);

textSize(50);
text("Kabal", 750, 500);
fill(0, 255, 255);

textSize(35);
text("PERSONAJES SECUNDARIOS", 250, 320);
fill(255, 0, 255);
}

// Pantalla 4 creditos//
if(pantalla == 4){
image(img12, 0, 0);

textSize(30);


text("DIRECCION:", 400, y-400);
text("Jostyn Junier Padilla Angulo ", 220, y-350);
text("CREDITOS", 410, y-200);
fill(0);
y++;
}
// Gracias//
if(pantalla == 5){
image(img13, 0, 0);
textSize(60);
text("gracias por ver esta produccion", 100, 300);
fill(0);
}
}
void mousePressed(){
pantalla = pantalla + 1;
}
void keyPressed(){
if( StartGame.isPlaying() )
{
StartGame.pause();
}
else
{
StartGame.play();
}
}
