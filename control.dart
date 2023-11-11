void main() {
  // If - Else

  bool acceso = false;

  if (acceso) {
    print('Tiene acceso');
  } else {
    print('No tiene acceso');
  }

  // If -Else y Else -If

  bool password = true;

  if (acceso) {
    print('Tiene acceso');
  } else if (password) {
    print('Tiene contraseña');
  } else {
    print('No cumple');
  }

  ///  Operadores
  /// &&
  /// ||
  /// ==
  /// !=
  /// >
  /// >=
  /// <
  /// <=
  ///

  if (acceso || password) {
    print('Ingresa');
  }

  if (acceso)
    print('Tiene acceso');
  else
    print('No tiene acceso');

  String valor = acceso ? 'Entra' : 'No entra';

  print(valor);

  // Switch

  String nombre = 'Anderson';

  switch (nombre) {
    case 'Anderson':
      print('Es Anderson');
      break;
    case 'Juan':
      print('Es Juan');
      break;
    case 'Pancho':
      print('Es pancho');
      break;
    default:
      print('No se encuentra el nombre');
      break;
  }

  // While

  int i = 0;

  while (i <= 5) {
    print('El valor de i es $i');
    i++;
  }

  // Do - While

  i = 0;

  do {
    print('Do While El Valor de i es $i');
    i++;
  } while (i <= 5);

  // Break Si la se cumple sale del while

  i = 0;

  do {
    print('Break El Valor de i es $i');
    i++;
    if (i == 3) break;
  } while (i <= 5);

  // For

  for (int i = 0; i <= 5; i++) {
    if (i == 2) {
      continue;
    }

    print('For el valor de i es $i');

    // if (i == 2) {
    //   break;
    // }
  }

  List<String> list = [
    'Uno',
    'Dos',
    'Tres',
  ];

  for (String miNum in list) {
    print(miNum);
  }

  for (int i = 0; i < list.length; i++) {
    print('For clasico ${list[i]}');
  }

  list.forEach((element) {
    print('forEach $element');
  });
}
