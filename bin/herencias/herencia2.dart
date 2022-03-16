class Vehiculo {
  Vehiculo(this.color);

  final String color;
  final String definition = 'Vehiculo';
}

class Auto implements Vehiculo {
  Auto(this.carColor);

  final String carColor;

  @override
  String get color => carColor;

  @override
  String get definition => '$carColor car';
}
