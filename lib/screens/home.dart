import 'package:flutter/material.dart';
import 'package:git_users/utilities/users_list_template.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Github Users',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 22.0,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Stack(
          children: [
            Container(
              height: 80.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: UsersListTemplate(),
            )
          ],
        ),
      ),
    );
  }
}
