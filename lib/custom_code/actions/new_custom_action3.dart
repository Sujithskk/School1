// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction3() async {
  // when i click icon open drawer and hide navbar and when i close drawer unhide the drawer
  bool isDrawerOpen = false;

  if (!isDrawerOpen) {
    Scaffold.of(context).openDrawer();
    setState(() {
      isDrawerOpen = true;
    });
  } else {
    Navigator.of(context).pop();
    setState(() {
      isDrawerOpen = false;
    });
  }
}
