import 'package:flutter/material.dart';


class Page4_screen extends StatelessWidget {


   final options= const ['Grid','Gráficas'];
  const Page4_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pagina 4'),
        
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        color: Colors.grey,
        child: Container(
          margin: EdgeInsets.all(30),
          child: ListView.separated(
            separatorBuilder: (_, index)=>Divider(
              height: 10,
              color: Colors.transparent,
              ), 
            itemCount: options.length,
            itemBuilder: (_,index)=>Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey
                
                ),
              child: ListTile(
                title: Text(options[index]),
                onTap: (){
                   final registro = options[index];
                   Navigator.pushNamed(context, registro);
                },
      
              ),
            ), 
            ),
        ),
      ),

    );
  }
}