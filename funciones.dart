void main() {
  print(suma(3, 5));
  print(resta(3, 5));
  print(operacion(8, 2, resta));

  print(dup(8.0));
  print(trip(8.0));

  print(transforma('anderson', true, 4));
  print(transforma1('anderson', true, 6));
  print(transforma2('anderson', exclama: 4));
}

///
/// Es una funcion para sumar
/// [input] numeros a sumar
/// [ouput] la suma
///
int suma(int a, int b) {
  return a + b;
}

int sumaTres(int a, int b, int c) {
  return a + b + c;
}

int resta(int a, int b) {
  return a - b;
}

int operacion(int a, int b, int Function(int a, int b) funcAEjecutar) {
  return funcAEjecutar(a, b);
}

// Funciones anonimas

var dup = (double x) {
  return 2 * x;
};

// Funciones flecha

var trip = (double x) => 3 * x;

///
/// Enviar un String => 'anderson'
/// Envio bool para pasar a mayuscula => true
/// Envio int para agregar signos de !! => 3
///
/// ('anderson', true, 3) => 'ANDERSON!!!'
/// ('anderson', false, 3) => 'anderson!!!'
/// ('anderson', true, 8) => 'ANDERSON!!!!!!!!'
///
///

// Parametros posicionales requeridos
String transforma(String nombre, bool mayus, int exclama) {
  if (mayus) nombre = nombre.toUpperCase();
  return nombre += '!' * exclama;
}

// Parametros posicionales opcionales

///
/// Parametros opcionales []
/// es necesario poner el ? para indar que puede ser null
/// Si se deja un valor inicializado no es necesario poner el ?

String transforma1(String nombre, [bool? mayus, int exclama = 2]) {
  if (mayus != null && mayus) nombre = nombre.toUpperCase();
  return nombre += '!' * exclama;
}

// Parametros nombrados

/// Parametros nombrados {}
/// es necesario poner el ? cuando no se inicializa o no es requerido
/// para dejar el parametro requerido se usa required

String transforma2(String nombre, {bool? mayus, required int exclama}) {
  if (mayus != null && mayus) nombre = nombre.toUpperCase();
  return nombre += '!' * exclama;
}
