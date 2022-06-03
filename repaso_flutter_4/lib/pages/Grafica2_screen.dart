import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart ;

class Grafica2 extends StatefulWidget {
  const Grafica2({Key? key}) : super(key: key);

  @override
  State<Grafica2> createState() => _Grafica2State();
}
class Grafica{
  int a ;
  int b ;
  Grafica(this.a, this.b);
}

class _Grafica2State extends State<Grafica2> {
  @override
  Widget build(BuildContext context) {
    final data = [
      Grafica(1, 50),
      Grafica(2, 100),
      Grafica(3, 50),
      Grafica(4, 100),
      Grafica(5, 50),
      Grafica(6, 100),
      Grafica(7, 50),
      Grafica(8, 100),
      Grafica(9, 50),
      
      
    ];

    List<chart.Series<Grafica,int>> series = [
      chart.Series<Grafica,int>(
        data: data,
        id: 'uno',
        domainFn: (a,b)=>a.a,
        measureFn: (a,b)=>a.b,
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
            SizedBox(
              height: 300,
              child: chart.LineChart(series),

            ),
             SizedBox(
              height: 300,
              child: chart.LineChart(series),

            ),
            SizedBox(
              height: 300,
              child: chart.LineChart(series),

            ),
             SizedBox(
              height: 300,
              child: chart.LineChart(series),

            ),
             
          ],
        ),
      ),

    );
    
  }
}