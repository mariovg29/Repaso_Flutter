import 'package:flutter/material.dart';


class Page1Screen extends StatelessWidget {
  final menu= const['Graficas1','Graficas1','Graficas1','Graficas1'];
  const Page1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: 
          List.generate(menu.length, (index) => GestureDetector(
            onTap: (){
              final op= menu[index];
              Navigator.pushNamed(context, op);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20,bottom: 20, left: 10,right: 10),
              
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(menu[index]),
              ),
            ),
          ))
        
        ),
    );
    
  }
}