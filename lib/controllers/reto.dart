import "dart:math";
import 'dart:io';

void main() {
 Adivinanza adv = Adivinanza.generarAdivinanza();
 print(adv.pregunta);
 String? resUsuario = Adivinanza.pedirRespuesta();
 bool? eval = Adivinanza.evaluarRespuesta(adv,resUsuario);
 if(eval == true){
  print('Respuesta correcta');
 }
 else{
  print('Respuesta incorrecta');
 }
}

class Adivinanza{
  String pregunta;
  String respuesta;

  Adivinanza(this.pregunta, this.respuesta);
  
 static List<Adivinanza> adivinanzas = [
    Adivinanza('Bonita flor que gira buscando el sol. ¿Qué es?', 'girasol'),
    Adivinanza('Tengo alas y pico. Hablo y hablo, pero no sé lo que digo. ¿Quién soy?', 'loro'),
  ];
  
  static Adivinanza generarAdivinanza(){
   final random = Random();
   var element = adivinanzas[random.nextInt(adivinanzas.length)];
   return element;
   
  }
  
  static String? pedirRespuesta(){
    print("Por favor ingrese su respuesta");
    String? resUsuario = stdin.readLineSync().toString();
    return resUsuario;
  }
  
  static bool evaluarRespuesta(Adivinanza adivinanza, String? respuesta) {
    return adivinanza.respuesta.toLowerCase() == respuesta?.toLowerCase();
  }

}