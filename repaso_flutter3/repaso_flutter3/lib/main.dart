import 'package:flutter/material.dart';
import 'package:repaso_flutter3/pages/graficos2_screen.dart';
import 'package:repaso_flutter3/pages/graficos_screen.dart';
import 'package:repaso_flutter3/pages/page1_screen.dart';
import 'package:repaso_flutter3/pages/page2_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Page1(),
      routes: {
        'Pagina1':(context) => Page1(),
        'Pagina2':(context) => Page2(),
        'Graficos':(context) => Graficos(),
        'Graficos2':(context) => Graficos2()
      },
    );
  }
}