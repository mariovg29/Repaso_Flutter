import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

  final datosLista= const['Mario','Valadez', 'Guerrero','Grafica1','Grafica2','Valadez', 'Guerrero','Mario','Valadez', 'Guerrero'];
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        color: Colors.black,
        child: ListView.separated(
          itemBuilder: (_,index)=>Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: ListTile(
              onTap: () {
                final ruta= datosLista[index];
                if(ruta=='Grafica1' || ruta=='Grafica2'){ 
                  Navigator.pushNamed(context, ruta);

                }else{

                Navigator.pushReplacementNamed(context, ruta);
                }
              },
              title: Text(datosLista[index]),
            ),
          ), 
          separatorBuilder: (_,index)=>Divider(
            height: 5,
            color: Colors.transparent,
          ), 
          itemCount: datosLista.length,
          
          ),
      )


    );
    
  }
}