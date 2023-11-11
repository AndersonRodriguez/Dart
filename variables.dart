void main() {
  // Comentarios en una sola linea

  /**
   * 
   * Es un bloque
   * de 
   * comentarios
   * 
   */

  ///
  /// Documentación
  /// [Input]
  ///

  // Numeros

  int a = 6;
  double b = 2.0; // Siempre poner el punto, asi sea un int .0

  num c = 6;

  c = 8.4;

  print(c);

  // Comodin

  dynamic miValorDinamico = ''; // dynamic puede cambiar en el tiempo
  miValorDinamico = 3;
  miValorDinamico = 8.3;

  print(miValorDinamico);

  var miVar = ''; // Infiere el valor pero no cambia con el tiempo
  // miVar = 3;

  int e; // Inicializa con valor null si no agrego valor

  // print(e);

  int? myIntNull = 5;
  myIntNull = null;

  String miString = 'Hola mundo, dijo: "Anderson"';
  String miString1 = "Como estas?, i'm";

  print(miString);
  print(miString1);

  String miString2 = """ 
Hola
Mundo,
Varias Lineas  
""";
  print(miString2);

  String myString3 = miString + ' ' + miString1;
  String myString4 = '$miString y Juan respondio $miString1';

  print(myString3);
  print(myString4);

  print(myString4[2]);

  // Booleanos

  bool activo = true;
  activo = false;
  activo = !activo;

  print(activo);

  // Listas

  List<dynamic> numeros = [1, 2, 3, 4, '', true, false, activo == true, "Hola"];

  // Concatenar Listas
  List<String> miLista = ['Hola', 'Mundo', for (var i in numeros) '#$i'];

  List miLista2 = [0, 1000, ...numeros];

  print(numeros);
  print(miLista);
  print(miLista2);

  miLista2.add('Valor nuevo');
  print(miLista2);

  miLista2.addAll(miLista);

  print(miLista2);
  print(miLista2.length);

  print(miLista2[1]);

  // Set

  Set<String> miSet = {'Hola', 'Mundo', 'Hola'};
  miSet.add('Anderson');
  miSet.add('Anderson');

  print(miSet);

  // Map

  // Key  Value

  Map<String, dynamic> miMap = {
    // Key: Value
    'nombre': 'Anderson',
    'edad': 30,
    'isLogin': true,
  };

  miMap.addAll({'color': 'rojo'});

  print(miMap);
  print(miMap['nombre']);

  // Constantes

  const int sum = 4; // const Aloja en tiempo de compilación
  final double pi = 3.14; // final Aloja en tiempo de ejecución

  // Enum

  print(Color.red);
  Color.black;

  const userState = Estado.loading;

  print(userState);

  switch (userState) {
    case Estado.loading:
      print('Cargando');
      break;
    case Estado.login:
      print('Login');
      break;
    case Estado.logout:
      print('Exit');
      break;
  }
}

enum Color { red, green, blue, black }

enum Estado { loading, login, logout }
