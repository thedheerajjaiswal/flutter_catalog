import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        'https://avatars.githubusercontent.com/u/49307887?s=400&u=7edc3e03d63850da542ddd00a7348c9dcc7c9992&v=4';
    return Drawer(
      child: Container(
        color: context.canvasColor,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('Dheeraj Jaiswal'),
                accountEmail: Text('dheerajjaiswal0781@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: context.theme.buttonColor,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.buttonColor,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: context.theme.buttonColor,
              ),
              title: Text(
                'Profile',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.buttonColor,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.doc_circle,
                color: context.theme.buttonColor,
              ),
              title: Text(
                'Data Stored',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.buttonColor,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.wrench,
                color: context.theme.buttonColor,
              ),
              title: Text(
                'Setting',
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: context.theme.buttonColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
