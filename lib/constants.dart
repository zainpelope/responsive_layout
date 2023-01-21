import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[300];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(''),
  centerTitle: false,
);

var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var titlePadding = const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
        ),
      ),
      Padding(
        padding: titlePadding,
        child: ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            'DASHBOARD',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: titlePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'ABOUT',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: titlePadding,
        child: ListTile(
          leading: const Icon(
            Icons.logout,
          ),
          title: Text(
            'LOGOUT',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);
