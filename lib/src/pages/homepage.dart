import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetoeder/src/charts/Profundidade.dart';
import 'package:projetoeder/src/charts/loc.dart';
import 'package:projetoeder/src/charts/temperautura_chart.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          child: Column(
            children : <Widget>[
                Profundidade(),
                Temperatura(),
                Localizacao()
            ],
            ),
          ),
      ),
    );
  }
}


  