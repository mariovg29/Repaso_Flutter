import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;


class Graficos2 extends StatefulWidget {
  
  const Graficos2({Key? key}) : super(key: key);

  @override
  State<Graficos2> createState() => _Graficos2State();
}
class Sales{
  int day;
  int sales ;
  Sales(this.day, this.sales);
}

class _Graficos2State extends State<Graficos2> {
  @override
  Widget build(BuildContext context) {
    final data=[
  Sales(2, 100),
  Sales(3, 200),
  Sales(4, 1000),
  Sales(5, 500),
  Sales(6, 100),

];List<chart.Series<Sales,int>>series=[
  chart.Series<Sales,int>(
    id: 'Lineal1',
    domainFn: (a,b)=>a.day,
    measureFn: (a,b)=>a.sales,
    data: data

  )


];
    
    return Scaffold(
      appBar: AppBar(title: Text('Grafico 2'),),
      body: Center(
        child: SizedBox(
          height: 360,
          child: chart.PieChart(series),
        ),),

    );
    
  }
}