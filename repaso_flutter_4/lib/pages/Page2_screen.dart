import 'package:flutter/material.dart';
import 'package:repaso_flutter_4/pages/Grafica1_screen.dart';


class GridScreen extends StatelessWidget {

  final datosGrid= const ['Home', 'Grafica1', 'Grafica2','Home', 'Grafica1', 'Grafica2','Home', 'Grafica1', 'Grafica2'];
  const GridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Grid'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        color: Colors.black,
        child: Container(
          margin: EdgeInsets.all(10),
          child: GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: List.generate(
            
            datosGrid.length, (index) => GestureDetector(
              onTap: () {
                final ruta = datosGrid[index];
                if(ruta=='Grafica1' || ruta=='Grafica2'){ 
                  Navigator.pushNamed(context, ruta);

                }else{

                Navigator.pushReplacementNamed(context, ruta);
                }
              },
              child: Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text(datosGrid[index])),
              ),
            )),
          ),
        ),
      ),
      

    );
    
  }
}