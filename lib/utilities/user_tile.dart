import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:git_users/screens/user_details.dart';
import 'package:git_users/models/users.dart';

class UserTile extends StatelessWidget {
  final Users user;

  UserTile({this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 2.0,
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => UserDetails(
                        username: user.username,
                        avatar: user.avatar,
                        score: user.score,
                        url: user.url)));
          },
          leading: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: user.avatar == null
                    ? AssetImage('assets/avatar.png')
                    : NetworkImage(user.avatar),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            user.username,
            style: GoogleFonts.montserrat(),
          ),
          subtitle: Text(
            user.url,
            style: GoogleFonts.montserrat(
              fontSize: 10.0,
            ),
          ),
        ),
      ),
    );
  }
}
