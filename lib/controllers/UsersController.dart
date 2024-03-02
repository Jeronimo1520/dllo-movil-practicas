import 'package:flutter_application_1/models/User.dart';

void main(List<String> args) async {
  Users users = Users();
  Map<String, dynamic> json = await users.getUsers();
  List<Users> usersList = users.getParserUsers(json);
  usersList.forEach((element){print(element);});

  print("3" + (6 - int.parse("3")).toString());
}