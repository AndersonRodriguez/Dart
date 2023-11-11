void main() {
  Hora hora = Hora();

  hora.h = 12;

  print(hora.h);
  print(hora.m);
  print(hora.s);

  Reloj miReloj = Reloj(10, 12, 30);
  Reloj miRelojNombrado = Reloj.nombrado(6, segundo: 15);

  miReloj.mostrarHora();
  miRelojNombrado.mostrarHora();

  print(miRelojNombrado.sumarHora(3, sumaMinuto: 4));

  Map<String, int> miMap = {'hora': 12, 'minuto': 23, 'segundo': 09};

  Reloj relojMap = Reloj.fromJson(miMap);

  relojMap.hora = 13;

  relojMap.mostrarHora();

  print(relojMap);
  print(relojMap.toJson());
}

class Hora {
  int h = 0, m = 0, s = 0;
}

class Reloj {
  int? hora, minuto, segundo;

  // Reloj(hora, minuto, segundo) {
  //   this.hora = hora;
  //   this.minuto = minuto;
  //   this.segundo = segundo;
  // }

  Reloj(this.hora, this.minuto, this.segundo);

  Reloj.nombrado(this.hora, {this.minuto = 10, required this.segundo});

  Reloj.fromJson(Map<String, int> miMap) {
    this.hora = miMap['hora'];
    this.minuto = miMap['minuto'];
    this.segundo = miMap['segundo'];
  }

  mostrarHora() {
    print('$hora:$minuto:$segundo');
  }

  String sumarHora(int suma, {int sumaMinuto = 0}) {
    return '${hora! + suma}:${minuto! + sumaMinuto}:$segundo';
  }

  Map<String, int?> toJson() {
    Map<String, int?> myMap = {
      "hora": this.hora,
      "minuto": this.minuto,
      "segundo": this.segundo,
    };
    return myMap;
  }
}

/**
 * 
 * Realizar un contructor nombrado 
 * donde tenga como parametro un map e inicialice el objeto Reloj
 * con sus respectivos valores
 * 
 * {
 *  "hora": 10,
 *  "minuto": 5,
 *  "segundo": 12,
 * }
 *  ==>
 * 
 * Reloj.mostrarHora();
 */