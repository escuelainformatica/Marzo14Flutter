class Animal {}

// behaviors
abstract class Flyer {
  void fly() => print('I can fly!');
}

abstract class Swimmer {
  void swim() => print('I can swim!');
}

class Bird extends Animal with Flyer {}

class Duck extends Animal with Swimmer, Flyer {}