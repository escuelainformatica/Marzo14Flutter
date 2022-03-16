abstract class Vehiculo {
  String patente;
  Vehiculo(this.patente);

  mostrar() {
    print("la patente es $patente");
  }
}
abstract class Camionetas {
  bool dobleCabina;
  int tonelaje;
  Camionetas(this.dobleCabina,this.tonelaje);
}
abstract class Electrico {
  int consumoElectrico;
  Electrico(this.consumoElectrico);
}
mixin Puertas {
  int puertas=4;
}

class Sedan extends Vehiculo implements Electrico,Puertas {
  int puertas;
  int consumoElectrico;
  Sedan(this.consumoElectrico,this.puertas, patente) : super(patente); // llamando al constructor Vehiculo original.
}

main() {
  var peugeot=Sedan(2222,2, "2222-2");
}