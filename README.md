# Clase 14 de Marzo

- [X] definiciones adicionales de variables
- [ ] control de errores
- [X] anotaciones
- [X] herencias

## definiciones adicionales de variables

```dart
  // preferir usar final
  final int entero2=20; // constante en tiempo de ejecucion.
  const int entero3=30; // constante en tiempo de compilacion.
```
> Nota: Las constantes no permiten modificar la variable, pero si las variables interiores.

```dart
  final mapa={"Nombre":"John","Apellido":"Doe"};
  mapa["Nombre"]="Bob"; // si es valido.
```

## herencia extends

> Solo se puede extender de una clase

```dart
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


```

## Herencia: implementar

> se puede implementar de una o mas clases o mixin

```dart
class Persona {
  String? nombre;
}
class Cliente implements Persona {
  String? nombre;
}

```


## Herencia: abstract

> Cuando se tiene una clase abstracta, es una clase que solamente puedo ocupar para
> extenderla o implementarla.
> Una clase abstracta no la puedo usar directamente.

```dart

abstract class Clase1 {
  
}
class Clase2 extends Clase1 { // es valido.
  
}
class Clase2 implements Clase1 { // es valido.

}

main() {
  var obj=Clase1(); // no se puede hacer.
}


```

## Herencia Mixin

> Son iguales que una clase abstracta, pero no pueden extenderse o tienen constructor.
> Mixin, por lo tanto se usa para implementar.

