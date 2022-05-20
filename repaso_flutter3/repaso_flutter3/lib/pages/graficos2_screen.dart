import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;



class Graficos2 extends StatefulWidget {
  const Graficos2({Key? key}) : super(key: key);

  @override
  State<Graficos2> createState() => _Graficos2State();
}
class DatosGrafica2{
  int a;
  int b;
  DatosGrafica2(this.a, this.b);
}

class _Graficos2State extends State<Graficos2> {
  @override
  Widget build(BuildContext context) {

    final data =[
      DatosGrafica2(1, 100),
      DatosGrafica2(2, 200),
      DatosGrafica2(3, 300),
      DatosGrafica2(4, 200),
      DatosGrafica2(5, 100),
    ];

    List<chart.Series<DatosGrafica2,int>>series=[
      chart.Series<DatosGrafica2,int>(
        id: 'lista2',
        domainFn: (a,b)=>a.a,
        measureFn: (a,b)=>a.b,
        data: data
      )

    ];

    


    return Scaffold(
      appBar: AppBar(
        title: Text('Gráficos2'),
      ),
      body: Center(
        child: SizedBox(
          height: 350,
          child: chart.LineChart(series),
        ),
      ),
    );
    
  }
}