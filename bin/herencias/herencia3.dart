class Animal {}
abstract class Volador {
  void volar() => print('Puedo volar!');
}
abstract class nadador {
  void nadar() => print('Puedo nadar!');
}
class Bird extends Animal implements Volador {
  @override
  void volar() => print('Puedo volar!');
}
class Duck extends Animal implements nadador, Volador {
  @override
  void volar() => print('Puedo volar!');

  @override
  void nadar() => print('Puedo nadar');
}