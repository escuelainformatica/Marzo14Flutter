class Persona {
  String? rut;
  String? nombre;

  mostrar() {
    print("rut: $rut   nombre:$nombre");
  }
}


// agregando herencia.
class Cliente extends Persona {
  int? deuda;
  bool? premium;

  @override
  mostrar() {
    print("rut: $rut   nombre:$nombre deuda:$deuda premium:$premium");
  }
}


main() {
  var john=Persona();
  john.rut="1111-2";
  john.nombre="john doe";
  john.mostrar(); // funcion original de Persona

  var cliente=new Cliente();
  cliente.rut="2222-2";
  cliente.nombre="john";
  cliente.deuda=2222;
  cliente.premium=true;
  cliente.mostrar(); // funcion de Cliente.

  var john2=Persona();
  john2.rut="1111-2";
  john2.nombre="john doe";
  john2.mostrar(); // funcion original de Persona
}