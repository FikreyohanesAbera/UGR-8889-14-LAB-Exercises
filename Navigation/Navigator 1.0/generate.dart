import 'package:flutter/material.dart';
import './ScreenThree.dart';
import './ScreenFour.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => ScreenThree());
          case '/four':
            return MaterialPageRoute(builder: (context) => ScreenFour());
        }
      },
    );
  }
}
