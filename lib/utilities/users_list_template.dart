import 'package:flutter/material.dart';
import 'package:git_users/models/users.dart';
import 'package:git_users/services/users_service.dart';
import 'package:git_users/utilities/user_tile.dart';

class UsersListTemplate extends StatefulWidget {
  @override
  _UsersListTemplateState createState() => _UsersListTemplateState();
}

class _UsersListTemplateState extends State<UsersListTemplate> {
  final GetUsersService getUsersService = GetUsersService();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getUsersService.getUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<Users>> snapshot) {
          if (snapshot.hasData) {
            List<Users> users = snapshot.data;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserTile(
                  user: users[index],
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
