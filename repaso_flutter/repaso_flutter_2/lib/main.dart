import 'package:flutter/material.dart';
import 'package:repaso_flutter_2/pages/graficos2_screen.dart';
import 'package:repaso_flutter_2/pages/graficos_screen.dart';
import 'package:repaso_flutter_2/pages/page1_screen.dart';
import 'package:repaso_flutter_2/pages/page2_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Page1(),
      routes: {
        'Pagina2':(BuildContext context)=>Page2(),
        'Pagina1':(BuildContext context)=>Page1(),
        'Graficas':(BuildContext context)=>Graficos(),
        'Graficas2':(BuildContext context)=>Graficos2(),
      },
    );
  }
}
