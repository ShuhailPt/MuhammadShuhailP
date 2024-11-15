import 'package:flutter/material.dart';

class KeyHolders {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  static final GlobalKey aboutKey = GlobalKey();
  static final GlobalKey projectKey = GlobalKey();
  static final GlobalKey experienceKey = GlobalKey();
  static final GlobalKey contactKey = GlobalKey();
}
