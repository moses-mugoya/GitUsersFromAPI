import 'package:flutter/material.dart';
import 'package:git_users/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetails extends StatefulWidget {
  final username;
  final avatar;
  final url;
  final score;

  UserDetails({this.username, this.avatar, this.url, this.score});
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          color: Colors.white.withOpacity(0.5),
          iconSize: 25.0,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        title: Text(
          'Github User Details',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 22.0,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage: widget.avatar == null
                    ? AssetImage('assets/avatar.png')
                    : NetworkImage(widget.avatar),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              widget.username,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'SCORE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              widget.score.toString(),
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.link,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5.0),
                Text(
                  widget.url,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
