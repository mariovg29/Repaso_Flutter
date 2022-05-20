import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page1 extends StatelessWidget {
final opt = const['Pagina1', 'Pagina2','Graficos', 'Graficos2'];

  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Primera pagina'),
      ),
      body: ListView.separated(
        itemBuilder: (_,index)=>ListTile(
          onTap: (){
            final ruta =opt[index];
            Navigator.pushNamed(context, ruta);
          },
          title: Text(opt[index]),

        ), 
        separatorBuilder: (_,index)=>Divider(
          height: 10,
        ), 
        itemCount: opt.length),
    );
    
  }
}