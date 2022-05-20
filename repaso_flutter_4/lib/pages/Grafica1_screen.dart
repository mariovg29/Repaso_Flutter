import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart ;

class Grafica1 extends StatefulWidget {


  const Grafica1({Key? key}) : super(key: key);

  

  @override
  State<Grafica1> createState() => _Grafica1State();
}
class Grafica{
  int a ;
  int b ;
  Grafica(this.a, this.b);
}

class _Grafica1State extends State<Grafica1> {
  @override
  Widget build(BuildContext context) {

    final data = [
      Grafica(1, 100),
      Grafica(2, 200),
      Grafica(3, 300),
      Grafica(4, 400),
      Grafica(5, 100),
      Grafica(6, 100),
      Grafica(7, 200),
      Grafica(8, 300),
      Grafica(9, 400),
      Grafica(10, 100),
    ];

    List<chart.Series<Grafica,int>> series = [
      chart.Series<Grafica,int>(
        data: data,
        id: 'uno',
        domainFn: (a,b)=>a.a,
        measureFn: (a,b)=>a.b
        )

    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Grafica1'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10,right: 10),
        child: ListView(
          children: [
            
              
              Container(height: 200, child: chart.PieChart(series)),      
             
              Container(height: 200 ,child: chart.NumericComboChart(series)),
              Container(height: 200,child: chart.PieChart(series)),      
             
              Container(height: 200,child: chart.NumericComboChart(series)),
              Container(height: 200, child: chart.PieChart(series)),      
             
              Container(height: 200 ,child: chart.NumericComboChart(series)),
              Container(height: 200,child: chart.PieChart(series)),      
             
              Container(height: 200,child: chart.NumericComboChart(series)),

            
             
          ],
        ),
      ),

    );
    
  }
}