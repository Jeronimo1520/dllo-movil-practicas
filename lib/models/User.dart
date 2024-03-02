import 'package:http/http.dart' as http;
import 'dart:convert';

class Users {

  late int id;
  late String firstName;
  late String email;

  //Constructor por defecto
  Users();

  Users.empty(){
   this.id = 0;
  this.firstName = '';
  this.email = '';
  }

  //Constructor nombrado
  Users.fromJson({required Map<String, dynamic> user}){
     id = user['id'] ?? 0;
      firstName = user['first_name'] ?? '';
      email = user['email'] ?? '';
    
  }

  Future<Map<String, dynamic>> getUsers() async{
    var url = Uri.parse('https://reqres.in/api/users?page=2');
    Future<http.Response> futureResponse = http.get(url);
    http.Response response = await futureResponse;
    Map<String, dynamic> responseData = jsonDecode(response.body ) as Map<String, dynamic>;
    return responseData;
  }

  List<Users> getParserUsers(Map<String, dynamic> json) {
    List<dynamic> data = json["data"];
    List<Users> users = [];
    for (var user in data){
      users.add(Users.fromJson(user: user));
    }
    return users;
  }



   @override
  String toString() {
   print('Id: $id = Name:$firstName Email:$email' );
   return firstName;
  }

}