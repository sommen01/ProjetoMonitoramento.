import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projetoeder/src/charts/profundidade_chart.dart';



class Profundidade extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ExpansionTile(
           title: Text(''
              "Profundidade",
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[700]),
          ),
          leading: Icon(FontAwesomeIcons.water),
          trailing: Icon(Icons.add),
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Profundidade',
                style : TextStyle(fontSize : 20)
              ),
            ),
            Icon(Icons.linear_scale, color: Colors.blueAccent),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
            child: 
             SimpleLineChart.withSampleData()
             ),
          ],
        ));

  }
}