import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  final nombreBotones= const['Pagina1','Graficos','Pagina1','Graficos2','Pagina1' ];
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          nombreBotones.length, (index) => GestureDetector(
            onTap: () {
              final ruta= nombreBotones[index];
              Navigator.pushReplacementNamed(context, ruta);
              
            },
            child: Container(
              child: Center(
                child: Text(nombreBotones[index]),
              ),
          
            ),
          )),
        ),
        
    );
  }
}