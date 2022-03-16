class Animal {}

// behaviors
abstract class Volar {
  void volar() => print('Puedo volar!');
}

mixin Nadar {
  void nadar() => print('Puedo nadar!');
}

class Bird extends Animal with Volar {}

class Duck extends Animal with Nadar, Volar {}