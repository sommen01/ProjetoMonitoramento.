import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projetoeder/src/charts/temperatura.dart';



class Temperatura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ExpansionTile(
           title: Text(''
              "Temperatura",
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.redAccent),
          ),
          leading: Icon(FontAwesomeIcons.thermometerThreeQuarters, color: Colors.redAccent,),
          trailing: Icon(Icons.add, color: Colors.redAccent,),
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Temperatura',
                style : TextStyle(fontSize : 20)
              ),
            ),
            Icon(Icons.linear_scale, color: Colors.redAccent),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
            child: 
                SimpleLineChart2.withSampleData()
             ),
          ],
        ));

  }
}