import 'package:flutter/material.dart';
import 'screens/loginScreen/loginScreen.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
        routes: <String, WidgetBuilder>{
          '/loginScreen': (context) => new LoginScreen(),
          '/homeScreen': (context) => new HomeScreen(),
        },
        home: new Scaffold(
          body: new LoginScreen(),
        ));
  }
}
