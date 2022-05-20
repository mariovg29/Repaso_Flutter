import 'package:flutter/material.dart';
import 'package:repaso_flutter_4/pages/Grafica1_screen.dart';
import 'package:repaso_flutter_4/pages/Grafica2_screen.dart';
import 'package:repaso_flutter_4/pages/Page1_screen.dart';
import 'package:repaso_flutter_4/pages/Page2_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Page1(),
      routes: {
        'Mario':(context) => GridScreen(),
        'Valadez':(context) => GridScreen(),
        'Guerrero':(context) => Page1(),
        'Home':(context) => Page1(),
        'Pagina Principal':(context) => Page1(),
        'Grafica1':(context) => Grafica1(),
        'Grafica2':(context) => Grafica2()
      },
    );
  }
}