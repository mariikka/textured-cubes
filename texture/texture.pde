float rotx, roty;
PImage diamond, grassB, grassS, grassT, meatball;

void setup(){
size(800, 800, P3D);
diamond = loadImage("diamond.png");
grassB = loadImage("grassB.png");
grassS = loadImage("grassS.png");
grassT = loadImage("grassT.png");
meatball = loadImage("meatball.png");

textureMode(NORMAL);

}

void draw(){
  
  background(0);
//texturedCube(width/2, 600, 0, meatball, 200);
texturedCube(width/2, 300, 0, grassT,grassS, grassB ,200);
  
  
}

void texturedCube(float x, float y, float z, PImage texture, float size){
pushMatrix();
translate (x, y, z);
scale(size);
rotateX(rotx);
rotateY(roty);
noStroke();

beginShape(QUADS);
texture(texture);

//top
vertex(0, 0, 0, 0, 0);
vertex(1, 0, 0, 1, 0);
vertex(1, 0, 1, 1, 1);
vertex(0, 0, 1, 0, 1);

//bottom
vertex(0, 1, 0, 0, 0);
vertex(1, 1, 0, 1, 0);
vertex(1, 1, 1, 1, 1);
vertex(0, 1, 1, 0, 1);

//front
vertex(0, 0, 1, 0, 0);
vertex(1, 0, 1, 1, 0);
vertex(1, 1, 1, 1, 1);
vertex(0, 1, 1, 0, 1);
//back

vertex(0, 0, 0, 0, 0);
vertex(1, 0, 0, 1, 0);
vertex(1, 1, 0, 1, 1);
vertex(0, 1, 0, 0, 1);

//left 
vertex(0, 0, 0, 0, 0);
vertex(0, 0, 1, 1, 0);
vertex(0, 1, 1, 1, 1);
vertex(0, 1, 0, 0, 1);

//right

vertex(1, 0, 0, 0, 0);
vertex(1, 0, 1, 1, 0);
vertex(1, 1, 1, 1, 1);
vertex(1, 1, 0, 0, 1);


endShape();

popMatrix();

}

void texturedCube(float x, float y, float z, PImage top, PImage side, PImage bottom, float size){
pushMatrix();
translate (x, y, z);
scale(size);
rotateX(rotx);
rotateY(roty);
noStroke();

beginShape(QUADS);
texture(top);

//top
vertex(0, 0, 0, 0, 0);
vertex(1, 0, 0, 1, 0);
vertex(1, 0, 1, 1, 1);
vertex(0, 0, 1, 0, 1);

endShape();

beginShape(QUADS);
texture(bottom);

//bottom
vertex(0, 1, 0, 0, 0);
vertex(1, 1, 0, 1, 0);
vertex(1, 1, 1, 1, 1);
vertex(0, 1, 1, 0, 1);

endShape();
beginShape(QUADS);
texture(side);

//front
vertex(0, 0, 1, 0, 0);
vertex(1, 0, 1, 1, 0);
vertex(1, 1, 1, 1, 1);
vertex(0, 1, 1, 0, 1);
//back

vertex(0, 0, 0, 0, 0);
vertex(1, 0, 0, 1, 0);
vertex(1, 1, 0, 1, 1);
vertex(0, 1, 0, 0, 1);

//left 
vertex(0, 0, 0, 0, 0);
vertex(0, 0, 1, 1, 0);
vertex(0, 1, 1, 1, 1);
vertex(0, 1, 0, 0, 1);

//right

vertex(1, 0, 0, 0, 0);
vertex(1, 0, 1, 1, 0);
vertex(1, 1, 1, 1, 1);
vertex(1, 1, 0, 0, 1);


endShape();

popMatrix();

}

void mouseDragged(){
rotx = rotx + (pmouseY - mouseY) * 0.01;
roty = roty + (pmouseX - mouseX) * -0.01;


}
