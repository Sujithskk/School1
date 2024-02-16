// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:scroll_to_hide_bottom_navigation_bar/scroll_to_hide_bottom_navigation_bar.dart';

Future newCustomAction2() async {
  // when i click icon open drawer and hide the navbar and when ii close drawer unhide the navbar
  bool isDrawerOpen = false;

  if (isDrawerOpen) {
    // close drawer and unhide navbar
    Navigator.of(context).pop();
    setState(() {
      isDrawerOpen = false;
      ScrollToHideController.of(context).animateTo(0);
    });
  } else {
    // open drawer and hide navbar
    setState(() {
      isDrawerOpen = true;
      ScrollToHideController.of(context).animateTo(
          ScrollToHideController.of(context).position.maxScrollExtent);
    });
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DrawerScreen(),
      ),
    );
  }
}
