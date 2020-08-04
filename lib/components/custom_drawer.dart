import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:premedic/provider/user.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context).user;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(user.name == null ? "" : user.name),
              accountEmail: Text(user.email == null ? "" : user.email),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(user.avater),
              ),
            ),
            ListTile(
              leading: Icon(Mdi.home),
              title: Text("Home Page"),
            ),
            ListTile(
              leading: Icon(Mdi.security),
              title: Text("Privacy"),
            ),
            ListTile(
              leading: Icon(Mdi.faceProfile),
              title: Text("Edit Profile"),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 200,
              height: 1,
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Mdi.logout),
              title: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}
