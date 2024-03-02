import 'package:http/http.dart' as http;
import 'dart:convert';

class Jokes {

  String id = '';
  String value = '';
  String url = '';
  
  //Constructor por defecto
  Jokes();
  
  //Constructor nombrado - profe
  Jokes.fromJson({required Map<String, dynamic> json}){
    id = json['id'] ?? '';
    url = json['url'] ?? '';
    value = json['value'] ?? '';
  }
  //Mi solucion
  // Jokes({Map<String, dynamic>? data}){
  //   if (data != null) {
  //     id = data['id'] ?? '';
  //     value = data['value'] ?? '';
  //     url = data['url'] ?? '';
  //   }
  // }
  
  Future<Map<String, dynamic>> obtenerJoke() async{
    var url = Uri.parse('https://api.chucknorris.io/jokes/random');
    Future<http.Response> futureResponse = http.get(url);
    http.Response response = await futureResponse;
    Map<String, dynamic> responseData = jsonDecode(response.body ) as Map<String, dynamic>;
    return responseData;
  }

  @override
  String toString() {
   print('Id: $id = Value:$value');
   return value;
  }
}