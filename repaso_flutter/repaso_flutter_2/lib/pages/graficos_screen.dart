
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as chart;



class Graficos extends StatefulWidget {
  const Graficos({Key? key}) : super(key: key);

  @override
  State<Graficos> createState() => _GraficosState();
}
class Sales{
  int day;
  int sales ;
  Sales(this.day, this.sales);
}
 


class _GraficosState extends State<Graficos> {
 
  @override
  Widget build(BuildContext context) {
final data=[
  Sales(2, 100),
  Sales(3, 200),
  Sales(4, 300),
  Sales(5, 200),
  Sales(6, 100),

];
List<chart.Series<Sales,int>>series=[
  chart.Series<Sales,int>(
    id: 'Lineal1',
    domainFn: (a,b)=>a.day,
    measureFn: (a,b)=>a.sales,
    data: data

  )


];

    return Scaffold(
      appBar: AppBar(title: Text('Grafico 1'),),
      body: Center(
        child: SizedBox(
          height: 350,
          child: chart.LineChart(series),

        ))
      

    );
    
  }
}