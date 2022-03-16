// ejemplo con catch
main() {
  int n1=0;
  int n2=0;
  try {
    int n3=n1 ~/ n2; //  ~/ es division de entero.
    print(n3);
  } catch(ex) { // obtiene el tipo de error
    print("error en tiempo de ejecucion $ex");
  }
}