import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

const request  ='http://sistema.e7sr.online/api/v1/profundidade/one';



Future<Map> getData() async{

  http.Response response = await http.get(request);

  return json.decode(response.body);

}

class LocGrafico extends StatefulWidget {
  @override
  _LocGraficoState createState() => _LocGraficoState();
}

class _LocGraficoState extends State<LocGrafico> {
  String pgn;
  String sid;
  String depth;
  String timestamp;
  int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Map>(
        future: getData(),
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Text('Carregando dados...')
              );
              break;
              default :
              if(snapshot.hasError){
                return Center(
                child: Text('Erro ao carregar dados...')
              );
              }
              else{

                   pgn = snapshot.data["pgn"];
                   sid = snapshot.data["sid"];
                   depth = snapshot.data["depth"];
                   timestamp = snapshot.data["timestamp"];
                   id = snapshot.data["id"];
                return Container(
                  color: Colors.green,
                );
              }
          }

        },
      )
    );
  }
}