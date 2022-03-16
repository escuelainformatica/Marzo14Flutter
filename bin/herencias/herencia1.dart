class Vehiculo {
  Vehiculo(this.color);

  final String color;
  final String definition = 'Vehiculo';
}

class Auto extends Vehiculo {
  Auto(String color) : super(color);
}

class HatchBack extends Auto {
  HatchBack(String color) : super(color);
}
