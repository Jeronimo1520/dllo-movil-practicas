import 'package:flutter_application_1/models/carro.dart';

void main(List<String> args) async {
   Carro carro = Carro(color: 'negro', nroPuertas: 1, modelo: 0);
   var carro1 = new Carro(color: 'negro', nroPuertas: 2, modelo: 0);
  //  final carro4 = Carro.fromJson({});
  //  var carro2 = Carro.fromJson({});
   print(carro);
   print(carro1);
  //  print(carro4);
  //  print(carro2);

  print("3" + (6 - int.parse("3")).toString());
  //  int num; 
  //  print(num);
// print("3" + (6 - int.parse("3")).toString())
  // String miTexto="20.2";

  // double num = double.parse(miTexto);
  // print(num);
}