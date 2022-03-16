abstract class Colores {
  String color;
  Colores(this.color);

  cambiarColor(String nuevoColor) {
    this.color=nuevoColor;
  }
}
// mixin es similar a una clase abstracta salvo:
// 1) no puede tener constructor.
// 2) no puede extenderse pero si implementarse.
mixin TipoEmbalaje {
  final String tipo='';
  // TipoEmbalaje(this.tipo); no puedo tener constructor
}
class Caja implements Colores,TipoEmbalaje {
  String color;
  final String tipo;
  final int volumen;
  Caja(this.color,this.tipo,this.volumen);

  cambiarColor(String nuevoColor) {
    this.color=nuevoColor;
  }

  @override
  String toString() {
    return "la caja tiene el valor $color $tipo $volumen";
  }

}

main() {
  var caja=Caja("rojo","carton reciclado",333);
  print(caja);
  caja.cambiarColor("azul");
  print(caja);
}