import 'package:flutter/material.dart';
import 'screens/loginScreen/loginScreen.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      body: new LoginScreen(),
    ));
  }
}
