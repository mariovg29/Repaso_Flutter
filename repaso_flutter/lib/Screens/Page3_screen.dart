import 'package:flutter/material.dart';

class Page3Screen extends StatelessWidget {

final options = const ['Menú 1','Menú 2','Menú 3','Menú 4'];

  const Page3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tercera Pagina"),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        color: Colors.grey,
        child: Container(          
          margin: const EdgeInsets.only(left: 30,right: 30,top: 10),
          child: ListView.separated(
                 itemCount: options.length,
                 separatorBuilder: (_, index)=>const Divider(
                   height: 20,
                   color: Colors.transparent,
                   ),
                itemBuilder: (_ , index)=>Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent
                    ),
                  child: ListTile(
                    title: Text(options[index]),
                    onTap: (){
                      Navigator.pushNamed(context, '${options[index]}');
                      // final datos = options[index];
                      // print(datos);
                    },
                  ),
                ),
              ),
          
        ),
      )

    );
    
  }
}