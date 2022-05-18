import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {

  final opciones= const['Pagina1', 'Graficas2','Graficas'];
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid'),),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(opciones.length, (index) => GestureDetector(
          onTap: (){
            final op= opciones[index];
            Navigator.pushNamed(context, op);
          },
          child: Container(
            color: Colors.grey,
            child: Center(
              child: Text(opciones[index]),
            ),
          ),
        )),
        )

    );
    
  }
}
