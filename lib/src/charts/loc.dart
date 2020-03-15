import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projetoeder/src/charts/loc_chart.dart';

import 'loc_chart.dart';
import 'loc_chart.dart';


class Localizacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ExpansionTile(
           title: Text(''
              "Localização",
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[700]),
          ),
          leading: Icon(FontAwesomeIcons.compass,),
          trailing: Icon(Icons.add),
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Localizacao',
                style : TextStyle(fontSize : 20)
              ),
            ),
            Icon(Icons.linear_scale, color: Colors.grey),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: LocGrafico(),
            )            
          ],
        ));

  }
}