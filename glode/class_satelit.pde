class Satelite {

  void tegnsSelite() {
    rotation+=0.1;

    //latt
    pushMatrix();
    translate(width*0.5, height*0.5);
    rotate(rotation, zAxis.x, zAxis.y, zAxis.z);
    translate(100, 0, 0);
    box(20);
    popMatrix();
  }
}
