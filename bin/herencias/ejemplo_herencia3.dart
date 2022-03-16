class Persona {
  String? rut;
  String? nombre;

  mostrar() {
    print("rut: $rut   nombre:$nombre");
  }
}
// abstractra, es una clase que no se puede usar directamente.

abstract class Contacto {
  String? correo;
  String? telefono;
}

class Empleado {
  String? rut;
  String? nombre;
  String? correo;
  String? telefono;
  Empleado(this.rut, this.nombre, this.correo, this.telefono);
  mostrar() {
    print("rut: $rut   nombre:$nombre");
  }
}

class Cliente implements Persona,Contacto {
  String? rut;
  String? nombre;
  String? correo;
  String? telefono;
  Cliente(this.rut, this.nombre, this.correo, this.telefono);
  mostrar() {
    print("rut: $rut   nombre:$nombre");
  }
}

main() {
  var cli=Cliente("1111-1","john","aaa@bbb.com","555-234563");

  enviarCorreo(cli);
  mostrarRut(cli);

  var emp=Empleado("1111-1","john","aaa@bbb.com","555-234563");
  // enviarCorreo(emp); no es valido
  // mostrarRut(emp); no es valido

  //var contacto=Contacto(); no es valido, porque contacto es abstracto.
  //contacto.correo="aaaa@aaa.com";
  //contacto.telefono="55555-3333";
}

enviarCorreo(Contacto contacto) {
  print("Enviando correo a ${contacto.correo}");
}
mostrarRut(Persona persona) {
  print("El rut es: ${persona.rut}");
}