class Carro {
late String color;
late int nroPuertas;
late int modelo;
late String? idPropietario;

Carro(
{required this.color,
required this.nroPuertas,
required this.modelo,
this.idPropietario});

Carro.fromJson(Map<String, dynamic> jsonCarro) {
this.color = jsonCarro["color"];
this.nroPuertas = jsonCarro["nroPuertas"];
this.modelo = jsonCarro["modelo"];
this.idPropietario = jsonCarro["idPropietario"];
}
}