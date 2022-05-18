import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {

final options= const ['Menu 1','Menu 2','Menu 3','Menu 4','Menu 5'];


  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Segunda Pantalla'),
      ),
      body:Container(
        margin: EdgeInsets.all(0),
        color: Colors.amberAccent,
        child: Container(
          margin: EdgeInsets.all(20),
          child: ListView.separated(
            itemCount: options.length,
            separatorBuilder: (_,index)=>Divider(
              height: 10,
            ),
            itemBuilder:(_,index)=>Container(
              //color: Colors.amberAccent,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange
                ),
              child: ListTile(
                title: Text(options[index]),              
                onTap: (){
                  final nombre = options[index];
                  print(nombre);
                }
      
              ),
            ) ),
        ),
      )
      

    );
    
  }
}