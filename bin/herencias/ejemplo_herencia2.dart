class Persona {
  String? rut;
  String? nombre;

  mostrar() {
    print("rut: $rut   nombre:$nombre");
  }
}

// extends = use los campos y funciones de la clase base
// implements es el camino contrario.

// es un contrato que debe seguirse.

class Cliente implements Persona {
  int? deuda;
  String? rut;
  String? nombre;
  @override
  mostrar() {
  }
}

main() {
  var per=Persona();
  per.nombre="john doe";
  mostrarCliente(per);

  var cli=Cliente();
  cli.nombre="john doe";
  mostrarCliente(cli);
}

mostrarCliente(Persona per) {
  print("el nombre es ${per.nombre}");
}