class Producto {
  final String nombre;
  final int precio;
  final int stock;
  /*Producto(String nombre,int precio,int stock) {
    this.nombre=nombre;
    this.precio=precio;
    this.stock=stock;
  }*/
  const Producto.nombre(this.nombre,this.precio,this.stock);
}

main() {
  var prod=Producto.nombre("cocacola",222,1);
  // prod.nombre="fanta"; no es posible.

}