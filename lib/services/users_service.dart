import 'package:git_users/models/users.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetUsersService {
  Future<List<Users>> getUsers() async {
    final response = await http.get(
        Uri.parse('https://api.github.com/search/users?q=location%3ANairobi'));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body)["items"];

      List<Users> users = body
          .map(
            (dynamic item) => Users.fromJson(item),
          )
          .toList();

      return users;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
