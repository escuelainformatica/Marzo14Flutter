class SomeAnnotation {
  const SomeAnnotation();
}

const SomeAnnotation someAnnotation = SomeAnnotation();

// usando una clase con un constructor constante
@SomeAnnotation()
class SomeClass {
}
// usando una constante
@someAnnotation
class SomeClass2 {
}


main() {
  var a1=new SomeClass();
}