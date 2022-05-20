import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:charts_flutter/flutter.dart' as chart;

class Graficos extends StatefulWidget {
  const Graficos({Key? key}) : super(key: key);

  @override
  State<Graficos> createState() => _GraficosState();
}
class DatosGrafica{
  int a;
  int b;
  DatosGrafica(this.a,this.b);

}

class _GraficosState extends State<Graficos> {
  @override
  Widget build(BuildContext context) {

    final data=[
      DatosGrafica(1, 100),
      DatosGrafica(2, 200),
      DatosGrafica(3, 300),
      DatosGrafica(4, 2000),
      
      DatosGrafica(5, 100),
    ];
    List<chart.Series<DatosGrafica,int>>series=[
      chart.Series<DatosGrafica,int>(
        id: 'lista',
        data: data,
        domainFn: (v,b)=>v.a,
        measureFn: (v,b)=>v.b,

        )

    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Gráficos'),
      ),
      body: Center(
        
        child: SizedBox(
          height: 350,
          child: chart.PieChart(series),
          
        ),
      ),
    );
    
  }
}