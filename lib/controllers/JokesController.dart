import 'package:flutter_application_1/models/Jokes.dart';

void main(List<String> args) async {
  //solucion profe
  Jokes jokes = Jokes();
  Map<String, dynamic> json = await jokes.obtenerJoke();
  jokes = Jokes.fromJson(json: json);
  print(jokes);
  //Mi solucion
  // Jokes jokes = Jokes();
  // Map<String, dynamic> jokeData = await jokes.obtenerJoke();
  // Jokes fullJoke = Jokes(data: jokeData);
  // print(fullJoke.value);
}