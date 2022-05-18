import 'package:flutter/material.dart';
import 'package:repaso_flutter/Screens/Page1_screen.dart';

import 'Screens/Page2_screen.dart';
import 'Screens/Page3_screen.dart';
import 'Screens/page4_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Page4_screen(),
      routes: {
        'Menú 1':(BuildContext context)=> const Page1Screen(),
        'Menú 2':(BuildContext context)=> const Page2Screen(),
        'Gráficas':(BuildContext context)=> const Page1Screen(),
        'Graficas1':(BuildContext context)=> const Page2Screen(),
        'Grid':(BuildContext context)=> const Page2Screen()
      },
    );
  }
}
