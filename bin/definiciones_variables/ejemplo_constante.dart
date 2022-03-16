main() {

  final numero1=20;
  final int numero2=30;
  // numero2=30; no es valido ya que es una constante.

  // const suma=numero1+numero2; no es valido const es en tiempo de compilacion
  final suma=numero1+numero2;
  print(suma);

  // las constantes pueden modificarse los valores interiores.
  final mapa={"Nombre":"John","Apellido":"Doe"};
  print(mapa);
  //mapa={"Nombre":"Bob","Apellido":"Doe"}; no es valido
  mapa["Nombre"]="Bob"; // si es valido.
  print(mapa);

  // ejemplo de definir una variable como funcion
  final variable1=() {
    print("esta es una funcion anonima");
  };
  final variable2=(int duplicar) {
    return duplicar*2;
  };
  final variable3=(int duplicar) => duplicar*2;
}

funcionejemplo (int duplicar) {
  return duplicar*2;
}