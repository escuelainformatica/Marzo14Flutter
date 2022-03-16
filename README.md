# Clase 14 de Marzo

- [ ] definiciones adicionales de variables
- [ ] control de errores
- [ ] anotaciones
- [ ] herencias

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

## herencia 1

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