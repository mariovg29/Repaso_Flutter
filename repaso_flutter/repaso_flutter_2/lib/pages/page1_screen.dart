import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

final opciones = const['Pagina2','Pagina2','Pagina2','Pagina2'];

  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grafico 1'),),
      body: ListView.separated(
        itemCount: opciones.length,
        itemBuilder: (_,index)=>Container(
          color: Colors.grey,
          child: ListTile(
            onTap: (){
              final rute= opciones[index];
              Navigator.pushReplacementNamed(context, rute);
              
            },
            title: Text(opciones[index]),
          ),
        ), 
        separatorBuilder: (_, index)=>Divider(
          height: 10,
          color: Colors.transparent,
        )), 
        

    );
    
  }
}